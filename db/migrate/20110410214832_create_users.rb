class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :postal_code
      t.boolean :community_league_member
      t.boolean :newsletter_signup
      t.integer :role_id, :default => 3
      t.integer :community_id
      t.string :encrypted_password
      t.string :salt

      t.timestamps
    end
    
    add_index :users, :email, :unique => true
  end

  def self.down
    drop_table :users
    remove_index :users, :email
  end
end
