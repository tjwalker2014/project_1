class Room < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true #would like to have included some way of validating the presence of loccation name in the string
  attr_accessible :name, :campus_id

  belongs_to :campus
  has_many :courses

  def change_error_messages
    if self.errors.messages[:name]
      self.errors.messages.delete(:name)
      self.errors.messages[:Looks] = ["like this new room could be anywhere. Maybe try giving it a name.."]
    end
  end
  
end
