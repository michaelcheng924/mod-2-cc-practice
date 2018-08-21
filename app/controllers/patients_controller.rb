class PatientsController < ApplicationController
before_action :selected_patient, only: [:show, :edit, :update]
  def index
    @patients = Patient.all
  end

  def show
  end

  def new
    @patient = Patient.new
  end
  def create
    @patient = Patient.create(patient_params)
    redirect_to @patient
  end
  def edit
  end

  def update
    @patient.update(patient_params)
    redirect_to @patient
  end


  private
  def selected_patient
    @patient = Patient.find(params[:id])
  end
  def patient_params
    params.require(:patient).permit(:name, doctor_ids:[])
  end

end
