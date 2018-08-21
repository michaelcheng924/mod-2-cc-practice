class AppointmentsController < ApplicationController
  before_action :selected_appointment, only: [:show, :edit, :update, :destroy]
  def index
    @appointments = Appointment.all
  end

  def show
  end

  def new
    @appointment = Appointment.new
    @doctor_options = Doctor.all.map { |doctor| [doctor.name, doctor.id] }
    @patient_options = Patient.all.map { |patient| [patient.name, patient.id] }
  end
  def create
    @appointment = Appointment.create(appointment_params)
    redirect_to @appointment.patient
  end

  def edit
    @doctor_options = Doctor.all.map { |doctor| [doctor.name, doctor.id] }
    @patient_options = Patient.all.map { |patient| [patient.name, patient.id] }
  end

  def update
    @appointment.update(appointment_params)
    redirect_to @appointment
  end
  def destroy
    @appointment.destroy
    redirect_to appointments_path
  end
  private
  def selected_appointment
    @appointment = Appointment.find(params[:id])
  end
  def appointment_params
    params.require(:appointment).permit(:description, :doctor_id, :patient_id)
  end
end
