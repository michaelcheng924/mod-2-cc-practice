class PatientsController < ApplicationController
  helper_method :selected_patient

  def show
    @patient = selected_patient 
  end

  def index
  end

  def new
    @patient = Patient.new
  end

  def create
    Patient.create(patient_params)

    redirect_to patient_path
  end


  def edit
  end

  private
  def patient_params
    params.require(:patient).permit(:name)
  end

  def selected_patient
    Patient.find(params[:id])
  end
end
