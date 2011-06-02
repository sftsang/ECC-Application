# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110602071938) do

  create_table "communities", :force => true do |t|
    t.string   "location"
    t.string   "name"
    t.text     "description"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "community_scavengers", :force => true do |t|
    t.integer  "community_id"
    t.integer  "scavenger_id"
    t.string   "simage_file_name"
    t.string   "simage_content_type"
    t.integer  "simage_file_size"
    t.datetime "simage_update_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "scavengers", :force => true do |t|
    t.string   "title"
    t.integer  "order_num"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "postal_code"
    t.boolean  "community_league_member"
    t.boolean  "newsletter_signup"
    t.integer  "role_id"
    t.integer  "community_id"
    t.string   "encrypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
