class Room < ActiveRecord::Base
  attr_accessible :name

  belongs_to :campus

  has_many :courses
end
