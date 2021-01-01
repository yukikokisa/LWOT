class CheckupsController < ApplicationController
  before_action :authenticate_patient!, only: [:new]

  def index
  end

  def new
    @checkup = Checkup.new
  end

  def create
    @checkup = Checkup.new(checkup_params)
    if @checkup.save
      redirect_to questions_path
    else
      render :new
    end  
  end

  private

  def checkup_params               
    params.require(:checkup).permit(:consultation_content_id, :detail).merge(patient_id: current_patient.id)
  end
end
