class QuestionsController < ApplicationController
  before_action :authenticate_patient!, only: [:new]
 
  def index
  end

  def new
  end

  def create
  end
  
end
