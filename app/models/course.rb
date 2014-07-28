class Course < ActiveRecord::Base
  attr_accessible :name, :description, :room_id, :user_ids, :start_detail, :end_detail

  belongs_to :room

  has_and_belongs_to_many :users
end
