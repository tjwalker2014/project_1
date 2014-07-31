class CreateTableUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :role, default: 'student'
      t.integer :campus_id
      t.timestamps
    end
  end
end
