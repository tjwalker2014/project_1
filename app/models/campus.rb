class Campus < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  attr_accessible :name, :google_map_source

  has_many :rooms
  has_many :users
  has_many :courses

end
