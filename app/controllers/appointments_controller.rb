class AppointmentsController < ApplicationController
  def show
  end

  def index
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.create(appointment_params)

    redirect_to @appointment.patient
  end


  def edit
  end

  private
  def appointment_params
    params.require(:appointment).permit(:doctor_id, :patient_id, :description)
  end
end
