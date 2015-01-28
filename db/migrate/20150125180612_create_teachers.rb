class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :last_name
      t.string :picture
      t.integer :mobile 
      t.datetime :birthdate

      t.timestamps null: false
    end
  end
end
