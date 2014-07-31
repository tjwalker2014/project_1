class Course < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  attr_accessible :name, :description, :campus_id, :room_id, :user_ids, :start_details, :end_details

  belongs_to :campus
  belongs_to :room
  has_and_belongs_to_many :users  
end
