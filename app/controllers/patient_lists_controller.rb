class PatientListsController < ApplicationController

  def index
    @patient = Patient.all.order(:name)
  end

  def new
  end

  def create
  end
end
