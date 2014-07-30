class CreateJoinTableCoursesUsers < ActiveRecord::Migration
  def change
    create_table :courses_users, id: false do |t|
      t.references :course
      t.references :user
    end
  end
end