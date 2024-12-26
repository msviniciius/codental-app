class AppointmentsController < ApplicationController
  before_action :set_appointment, only: %i[show edit update destroy]
  before_action :authenticate_user!

  def index
    @appointments = Appointment.all
  end

  def show
  end

  def new
    @appointment = Appointment.new
    @clients = Client.all
  end

  def edit
    @clients = Client.all
  end

  def create
    @appointment = Appointment.new(appointment_params)

    if @appointment.save
      redirect_to @appointment, notice: 'Compromisso cadastrado com sucesso.'
    else
      @clients = Client.all
      render :new
    end
  end

  def update
    if @appointment.update(appointment_params)
      redirect_to @appointment, notice: 'Compromisso atualizado com sucesso.'
    else
      render :edit
    end
  end

  def destroy
    @appointment.destroy
    redirect_to appointments_url, notice: 'Compromisso excluído com sucesso.'
  end

  private
  
  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:name, :start_time, :end_time)
  end
end
