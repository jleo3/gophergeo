class AddIndexToSimplegeoId < ActiveRecord::Migration
  def self.up
    add_index :locations, :simplegeo_id
  end

  def self.down
    remove_index :locations, :simplegeo_id
  end
end
