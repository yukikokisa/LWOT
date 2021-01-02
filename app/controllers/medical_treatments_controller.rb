class MedicalTreatmentsController < ApplicationController
  before_action :authenticate_patient!, only: [:new]

  def index
  end

  def new
    @medical_treatment = MedicalTreatment.new
  end

  def create
    @medical_treatment = MedicalTreatment.new(medical_treatment_params)
    if @medical_treatment.save
      redirect_to questions_path
    else 
      render :new
    end
  end
  
  private

  def medical_treatment_params
    params.require(:medical_treatment).permit(:treatment_content_id,:text).merge(patient_id: current_patient.id)
  end
end
