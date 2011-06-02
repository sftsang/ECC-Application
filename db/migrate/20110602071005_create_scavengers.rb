class CreateScavengers < ActiveRecord::Migration
  def self.up
    create_table :scavengers do |t|
      t.string :title
      t.integer :order_num

      t.timestamps
    end
  end

  def self.down
    drop_table :scavengers
  end
end
