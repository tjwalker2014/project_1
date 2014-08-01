class Course < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  attr_accessible :name, :description, :campus_id, :room_id, :user_ids, :start_details, :end_details

  belongs_to :campus
  belongs_to :room
  has_and_belongs_to_many :users  

  def change_error_messages
    if self.errors.messages[:name]
      self.errors.messages.delete(:name)
      self.errors.messages[:Err] = ["is this course secret? Either way it needs a name.."]
    end
    if self.errors.messages[:description]
      self.errors.messages.delete(:description)
      self.errors.messages[:Wow] = ["that's really descriptive. Maybe just a line or two so people know what they're signing up for.."]
    end
  end
end
