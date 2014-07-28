class Campus < ActiveRecord::Base
  attr_accessible :name, :description, :google_map_source

  has_many :rooms
end
