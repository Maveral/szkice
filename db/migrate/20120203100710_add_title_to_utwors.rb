class AddTitleToUtwors < ActiveRecord::Migration
  def self.up
    add_column :utwors, :title, :string
  end

  def self.down
    remove_column :utwors, :title
  end
end
