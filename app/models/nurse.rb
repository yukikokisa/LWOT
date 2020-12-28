class Nurse < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         authentication_keys: [:employee_number]

  VALID_PASSWORD_REGEX = /\A[a-z0-9]+\z/i
  validates :password, format: { with: VALID_PASSWORD_REGEX } 
  
  with_options presence: true do
    validates :name,             length: { maximum: 10 }, format: { with: /\A[ぁ-んァ-ン一-龥]/ }
    validates :employee_number,  length: { is: 8 }, format: { with: /\A[0-9]+\z/ }
  end      

  def email_required?
    false
  end

  def email_changed?
    false
  end

  def will_save_change_to_email?
    false
  end
end
