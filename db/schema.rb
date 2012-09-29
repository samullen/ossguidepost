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

ActiveRecord::Schema.define(:version => 20120910032953) do

  create_table "authentications", :force => true do |t|
    t.integer  "user_id"
    t.string   "provider",                 :null => false
    t.string   "uid",                      :null => false
    t.string   "token",                    :null => false
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
    t.string   "username",   :limit => 64
  end

  add_index "authentications", ["token"], :name => "index_authentications_on_token", :unique => true
  add_index "authentications", ["uid"], :name => "index_authentications_on_uid", :unique => true
  add_index "authentications", ["user_id"], :name => "index_authentications_on_user_id"

  create_table "projects", :force => true do |t|
    t.integer  "user_id"
    t.string   "name",        :limit => 64,                 :null => false
    t.string   "full_name",   :limit => 128,                :null => false
    t.text     "description"
    t.string   "git_url"
    t.string   "homepage"
    t.string   "language",    :limit => 32
    t.integer  "score",                      :default => 0, :null => false
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  add_index "projects", ["name"], :name => "index_projects_on_name"
  add_index "projects", ["user_id"], :name => "index_projects_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "username",           :limit => 64
    t.string   "email",                            :default => "", :null => false
    t.integer  "sign_in_count",                    :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                       :null => false
    t.datetime "updated_at",                                       :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["username"], :name => "index_users_on_username", :unique => true

end
