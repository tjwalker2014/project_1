module ApplicationHelper
  def all_courses
    result = []
    self.rooms.each do |room|
      result << room.courses
    end
    result.flatten
  end
end
