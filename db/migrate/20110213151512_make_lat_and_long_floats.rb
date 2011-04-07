class MakeLatAndLongFloats < ActiveRecord::Migration
  def self.up
    change_column :locations, :lat, :float
    change_column :locations, :long, :float
  end

  def self.down
    change_column :locations, :lat, :integer
    change_column :locations, :long, :integer
  end
end
