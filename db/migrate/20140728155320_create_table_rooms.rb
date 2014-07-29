class CreateTableRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name
      t.integer :campus_id
      t.timestamps
    end
  end
end
