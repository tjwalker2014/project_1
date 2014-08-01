class Campus < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  attr_accessible :name, :google_map_source

  has_many :rooms
  has_many :users
  has_many :courses

  def change_error_messages
    if self.errors.messages[:name]
      self.errors.messages.delete(:name)
      self.errors.messages[:Looks] = ["like your new campus is top secret, but maybe try giving it a name.."]
    end
  end
end
