class SorceryCore < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :email,            :default => nil
      t.string :crypted_password, :default => nil
      t.string :salt,			  :default => nil
      t.string :name
      t.string :last_name
      t.text   :about_me
      t.string :picture
      t.integer :mobile 
      t.datetime :birthdate

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end