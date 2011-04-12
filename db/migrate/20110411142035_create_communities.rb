class CreateCommunities < ActiveRecord::Migration
  def self.up
    create_table :communities do |t|
      t.string :location
      t.string :name
      t.text :description
      t.string :status

      t.timestamps
    end
  end

  def self.down
    drop_table :communities
  end
end
