class Campus < ActiveRecord::Base
  attr_accessible :name, :google_map_source

  has_many :rooms
  has_many :users
  has_many :courses

end
