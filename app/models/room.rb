class Room < ActiveRecord::Base
  attr_accessible :name, :campus_id

  belongs_to :campus
  has_many :courses
end
