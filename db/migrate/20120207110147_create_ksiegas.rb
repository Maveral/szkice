class CreateKsiegas < ActiveRecord::Migration
  def self.up
    create_table :ksiegas do |t|
      t.string :nick
      t.text :content

      t.timestamps
    end
  end

  def self.down
    drop_table :ksiegas
  end
end
