class ChangeWebsiteToTextField < ActiveRecord::Migration
  def self.up
    change_column :locations, :website, :text
  end

  def self.down
    change_column :locations, :website, :string
  end
end
