class User < ActiveRecord::Base
  has_secure_password
  validates :name, :password, :password_digest, :course_ids, presence: true
  validates :email, presence: true, uniqueness: true
  
  def role?(role_to_test)
    self.role.to_s == role_to_test.to_s
  end

  attr_accessible :name, :email, :password, :password_confirmation, :role, :course_ids, :campus_id

  belongs_to :campus
  has_and_belongs_to_many :courses

  def change_error_messages
    if self.errors.messages[:name]
      self.errors.messages.delete(:name)
      self.errors.messages[:This] = ["person must be a secret agent, which is awesome, but we do need a name.."]
    end
    if self.errors.messages[:email]
      self.errors.messages.delete(:email)
      self.errors.messages[:Hmm] = ["no email? They might find web development a little tricky then.. "]
    end
    if self.errors.messages[:password]
      self.errors.messages.delete(:password)
      self.errors.messages[:Blimey!] = ["No password? You're supposed to be the admin guy.. "]
    end
    if self.errors.messages[:password_digest]
      self.errors.messages.delete(:password_digest)
      self.errors.messages[:Would] = ["you mind entering the password again please? It's just so we know you didn't make any typos the first time.."]
    end
    if self.errors.messages[:course_ids]
      self.errors.messages.delete(:course_ids)
      self.errors.messages[:Are] = ["they here to enjoy the view? Please sign them up to a course"]
    end    
  end
end