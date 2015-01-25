class CreateKlasses < ActiveRecord::Migration
  def change
    create_table :klasses do |t|
      t.string :title
      t.string :teacher
      t.text :description
      t.datetime :date
      t.datetime :time
      t.string :place
      t.integer :price
      t.string :address
      t.float :latitude
      t.float :longitude
      t.timestamps null: false
    end
  end
end
