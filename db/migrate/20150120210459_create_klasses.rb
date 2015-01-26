class CreateKlasses < ActiveRecord::Migration
  def change
    create_table :klasses do |t|
      t.belongs_to :teacher, index: true
      t.string :title
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
#    add_index :klasses, :teacher_id
  end
end
