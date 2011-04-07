class AddEndpointToLocation < ActiveRecord::Migration
  def self.up
    add_column :locations, :json_link, :string
  end

  def self.down
    remove_column :locations, :json_link
  end
end
