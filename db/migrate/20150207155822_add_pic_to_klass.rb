class AddPicToKlass < ActiveRecord::Migration
  def self.up
    add_attachment :klasses, :klasspicture
  end

  def self.down
    remove_attachment :klasses, :klasspicture
  end
end
