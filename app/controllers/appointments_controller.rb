class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.create(appointment_params)
    redirect_to patient_path(@appointment.patient)
  end

  private
  def appointment_params
    params.require(:appointment).permit(:description, :doctor_id, :patient_id)
  end

end
