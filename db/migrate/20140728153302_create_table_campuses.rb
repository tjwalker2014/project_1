class CreateTableCampuses < ActiveRecord::Migration
   def change
    create_table :campuses do |t|
      t.string :name
      t.string :location # e.g.London
      t.text :google_map_source
      t.timestamps
    end
  end
end
