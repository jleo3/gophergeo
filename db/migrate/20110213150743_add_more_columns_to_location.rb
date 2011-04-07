class AddMoreColumnsToLocation < ActiveRecord::Migration
  def self.up
    add_column :locations, :category, :string
    add_column :locations, :subcategory, :string
    add_column :locations, :category_type, :string
  end

  def self.down
    remove_column :locations, :category
    remove_column :locations, :subcategory
    remove_column :locations, :category_type
  end
end
