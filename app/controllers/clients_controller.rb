class ClientsController < ApplicationController
  before_action :set_client, only: %i[show edit update destroy]

  def index
    @q = Client.ransack(params[:q])
    @clients = @q.result.order('name ASC')

    ClientStatisticsJob.perform_async
  end

  def show
  end

  def new
    @client = Client.new
  end

  def edit; end

  def create
    @client = Client.new(client_params)

    if @client.save
      respond_to do |format|
        format.html { redirect_to @client, notice: "Pessoa foi criada com sucesso." }
        format.json { render :show, status: :created, location: @client }
      end
    else
      respond_to do |format|
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    if @client.update(client_params)
      respond_to do |format|
        format.html { redirect_to @client, notice: "Pessoa foi atualizada com sucesso." }
        format.json { render :show, status: :ok, location: @client }
      end
    else
      respond_to do |format|
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @client.destroy
    respond_to do |format|
      format.html { redirect_to clients_url, notice: "Pessoa foi removida com sucesso." }
      format.json { head :no_content }
    end
  end

  private

  def set_client
    @client = Client.find_by(id: params[:id])
  end

  def client_params
    params.require(:client).permit(:name, :address, :city, :state, :zip_code,
                                   :phone, :cpf, :client_file_id, :appointment_id)
  end
end
