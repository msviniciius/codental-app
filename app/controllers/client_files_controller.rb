class ClientFilesController < ApplicationController
  before_action :set_client_file, only: %i[show edit update destroy]
  before_action :authenticate_user!

  def index
    @q = ClientFile.ransack(params[:q])
    @client_files = @q.result.order('id ASC')
  end

  def show
    @client_files = ClientFile.find(params[:id])
  end

  def new
    @client_file = ClientFile.new
  end

  def edit
  end

  def create
    @client_file = ClientFile.new(client_file_params)
  
    if @client_file.file.attached?
      if @client_file.save && @client_file.build_from_csv
        if @client_file.clients.any?
          existing_cpfs = Client.where(cpf: @client_file.clients.map(&:cpf)).pluck(:cpf)
  
          if existing_cpfs.any?
            flash.now[:alert] = "CPFs duplicados encontrados."
            render :new, status: :unprocessable_entity
          else
            @client_file.clients.each(&:save)
            flash[:notice] = 'Importação criada com sucesso.'
            redirect_to @client_file
          end
        else
          flash.now[:alert] = 'Nenhum dado encontrado no CSV.'
          render :new, status: :unprocessable_entity
        end
      else
        flash.now[:alert] = 'Erro ao salvar o arquivo ou processar os dados.'
        render :new, status: :unprocessable_entity
      end
    else
      flash.now[:alert] = 'Nenhum arquivo foi anexado.'
      render :new, status: :unprocessable_entity
    end
  end

  def update
    respond_to do |format|
      if @client_file.update(client_file_params)
        format.html { redirect_to @client_file, notice: 'Pessoa arquivo atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @client_file }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @client_file.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @client_file.destroy
    respond_to do |format|
      format.html { redirect_to client_files_url, notice: 'Pessoa arquivo excluído com sucesso.' }
      format.json { head :no_content }
    end
  end

  private

  def set_client_file
    @client_file = ClientFile.find(params[:id])
  end

  def client_file_params
    params.require(:client_file).permit(:file, :month, :year,
      clients_attributes: [:id, :name, :address, :city, :state, :zip_code, :phone, :cpf]
    )
  end
end
