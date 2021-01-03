class PatientListsController < ApplicationController

  def index
    wd = ["日", "月", "火", "水", "木", "金", "土"]
    time = Time.now
    @date = time.strftime("%Y/%m/%d(#{wd[time.wday]})")
    @patient_list = PatientList.new
    @patients = Patient.all.order(:name)
  end

  def new
  end

  def create
    binding.pry
    PatientList.create(patient_list_params) 
  end

  private

  def patient_list_params
    params.require(:patient_list).permit(:list[]).merge(nurse_id: current_nurse.id, patient_id: params[:patient_id])
  end  

end
