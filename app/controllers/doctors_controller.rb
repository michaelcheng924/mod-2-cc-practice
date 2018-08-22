class DoctorsController < ApplicationController
  before_action :current_doctor

  private
  def current_doctor
    @doctor = Doctor.find(params[:id])
  end
  
end
