class Campus < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  attr_accessible :name, :google_map_source

  has_many :rooms
  has_many :users
  has_many :courses

  # def change_error_messages
  #   if self.errors.messages[:password_digest]
  #     self.errors.messages.delete(:password_digest)
  #     self.errors.messages[:password] = ["can't be empty"]
  #   end
  # end
end
