class AppointmentsController < ApplicationController
  def new
  end

  def create
    appointment = Appointment.create(appointment_params)
    redirect_to appointment.patient
  end

  def appointment_params
    params.require(:appointment).permit(:doctor_id, :patient_id, :description)
  end
end
