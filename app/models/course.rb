class Course < ActiveRecord::Base
  attr_accessible :name, :description, :room_id, :user_ids, :start_details, :end_details

  has_many :campuses
  belongs_to :room
  # has_and_belongs_to_many :users
  has_many :users
end
