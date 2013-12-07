# encoding: UTF-8
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

<<<<<<< HEAD
ActiveRecord::Schema.define(:version => 20131123212159) do

  create_table "groups", :force => true do |t|
    t.string   "group_name"
    t.string   "group_description"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end
=======
ActiveRecord::Schema.define(:version => 20131104212658) do
>>>>>>> fee860efb27c8a9a1fc4bca633ae53b0f53030c3

  create_table "microposts", :force => true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
<<<<<<< HEAD
    t.integer  "group_id"
    t.string   "group_name"
    t.string   "title"
=======
    t.integer  "groupid"
>>>>>>> fee860efb27c8a9a1fc4bca633ae53b0f53030c3
  end

  add_index "microposts", ["group_id", "created_at"], :name => "index_microposts_on_group_id_and_created_at"
  add_index "microposts", ["user_id", "created_at"], :name => "index_microposts_on_user_id_and_created_at"

  create_table "relationships", :force => true do |t|
<<<<<<< HEAD
    t.integer  "joiner_id"
    t.integer  "joined_id"
=======
    t.integer  "groupid"
>>>>>>> fee860efb27c8a9a1fc4bca633ae53b0f53030c3
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "userid"
  end

  add_index "relationships", ["joined_id"], :name => "index_relationships_on_joined_id"
  add_index "relationships", ["joiner_id", "joined_id"], :name => "index_relationships_on_joiner_id_and_joined_id", :unique => true
  add_index "relationships", ["joiner_id"], :name => "index_relationships_on_joiner_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           :default => false
    t.integer  "current_group",   :default => 1
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
