class User < ActiveRecord::Base
  has_secure_password
  # validates :name, :email, presence: true, uniqueness: true
  
  def role?(role_to_test)
    self.role.to_s == role_to_test.to_s
  #   binding.pry
  end

  attr_accessible :name, :email, :password, :password_confirmation, :role, :course_ids, :campus_id

  belongs_to :campus
  has_and_belongs_to_many :courses
end