class CreateTableCoursesUsers < ActiveRecord::Migration
  def change
    create_table :courses_users, id: false do |t|
      t.references :course # this references name of the model
      t.references :user
    end
  end
end
