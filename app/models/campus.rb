class Campus < ActiveRecord::Base
  attr_accessible :name

  has_many :rooms
end
