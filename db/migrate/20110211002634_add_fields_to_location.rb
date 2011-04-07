class AddFieldsToLocation < ActiveRecord::Migration
  def self.up
    add_column :locations, :simplegeo_id, :string
    add_column :locations, :name, :string
    add_column :locations, :city, :string
    add_column :locations, :address, :string
    add_column :locations, :province, :string
    add_column :locations, :country, :string
    add_column :locations, :postal_code, :string
    add_column :locations, :website, :string
    add_column :locations, :phone, :string
    add_column :locations, :owner, :string
  end

  def self.down
    remove_column :locations, :simplegeo_id
    remove_column :locations, :name
    remove_column :locations, :city
    remove_column :locations, :address
    remove_column :locations, :province
    remove_column :locations, :country
    remove_column :locations, :postal_code
    remove_column :locations, :website
    remove_column :locations, :phone
    remove_column :locations, :owner
  end
end
