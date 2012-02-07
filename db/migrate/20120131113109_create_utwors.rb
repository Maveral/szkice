class CreateUtwors < ActiveRecord::Migration
  def self.up
    create_table :utwors do |t|
      t.text :body
      t.integer :poem

      t.timestamps
    end
  end

  def self.down
    drop_table :utwors
  end
end
