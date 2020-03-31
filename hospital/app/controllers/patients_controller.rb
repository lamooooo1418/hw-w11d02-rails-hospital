class PatientsController < ApplicationController
    def show 
        @patient = Patient.find(params[:id])
      end
       def index
        @patient =Patient.all
       end 
end


def new
    @patient = Patient.new
    end 
    
    def create 
    @patient =  Patient.new(patient_params)
    @patient.save
    redirect_to @patient
    end 
    private
    def patient_params
        params.require(:patient).permit(:first_name, :last_name,  :diagnosis, :born_on)
    end