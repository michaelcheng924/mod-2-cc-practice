class AppointmentsController < ApplicationController
  before_action :current_appointment, only:[:show, :edit]
  

  def index
    appointments = Appointment.all 
  end

  def show
  end

  
  def new
    @doctors = Doctor.all
    @patients = Patient.all
    @appointment = Appointment.new
    
  end

  def create
    @appointment =  Appointment.create(appointment_params)
    
    redirect_to @appointment.patient 
  end

  def edit
  end

  def update
  end 

  def destroy 
  end 


  private

   
   def current_appointment
    @appointment = Appointment.find(params[:id])
   end

   def appointment_params
    params.require(:appointment).permit(:doctor_id, :patient_id, :description)
   end 
end
