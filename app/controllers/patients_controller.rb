class PatientsController < ApplicationController
  before_action :current_patient

  private 

  def current_patient
    @patient = Patient.find(params[:id])
  end 

  
end
