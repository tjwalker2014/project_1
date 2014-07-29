class CreateTableCourses < ActiveRecord::Migration
   def change
    create_table :courses do |t|
      t.string :name
      t.text :description
      t.integer :room_id
      t.datetime :start_details
      t.datetime :end_details
      t.timestamps
    end
  end
end
