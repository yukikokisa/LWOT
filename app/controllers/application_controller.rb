class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    case resource
    when Nurse
      patient_lists_path
    when Patient
      root_path
    end
  end
end
