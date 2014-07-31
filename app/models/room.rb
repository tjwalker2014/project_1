class Room < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  attr_accessible :name, :campus_id

  belongs_to :campus
  has_many :courses
end
