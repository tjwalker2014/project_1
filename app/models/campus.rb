class Campus < ActiveRecord::Base
  attr_accessible :name, :location, :google_map_source

  has_many :rooms
end
