class Campus < ActiveRecord::Base
  attr_accessible :name, :location, :google_map_source

  has_many :rooms
  #has_many :courses, through: :rooms


  def all_courses
    result = []
    self.rooms.each do |room|
      result << room.courses
    end
    result.flatten

    # self.rooms.map(&:courses).flatten
  end
end
