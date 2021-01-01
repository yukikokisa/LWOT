class SymptomsController < ApplicationController
  before_action :authenticate_patient!, only: [:new]

  def index
  end

  def new
    @symptom = Symptom.new
  end

  def create
    @symptom = Symptom.new(symptom_params)
    if @symptom.save
      redirect_to questions_path
    else 
      render :new
    end
  end

  private

  def symptom_params
    params.require(:symptom).permit(:oneset_time, :body_region, :condition).merge(patient_id: current_patient.id)
  end
end
