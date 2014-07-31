class User < ActiveRecord::Base
  has_secure_password
  validates :name, :course_ids, presence: true
  validates :email, presence: true, uniqueness: true
  
  def role?(role_to_test)
    self.role.to_s == role_to_test.to_s
  end

  attr_accessible :name, :email, :password, :password_confirmation, :role, :course_ids, :campus_id

  belongs_to :campus
  has_and_belongs_to_many :courses

  def change_error_messages
    if self.errors.messages[:password_digest]
      self.errors.messages.delete(:password_digest)
      self.errors.messages[:password] = ["can't be empty"]
    end
 end
end