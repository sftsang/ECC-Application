class CreateCommunityScavengers < ActiveRecord::Migration
  def self.up
    create_table :community_scavengers do |t|
      t.integer :community_id
      t.integer :scavenger_id
      t.string :simage_file_name
      t.string :simage_content_type
      t.integer :simage_file_size
      t.datetime :simage_update_at

      t.timestamps
    end
  end

  def self.down
    drop_table :community_scavengers
  end
end
