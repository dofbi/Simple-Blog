# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100216222640) do

  create_table "comments", :force => true do |t|
    t.integer  "post_id",                    :default => 0,  :null => false
    t.string   "author",       :limit => 25, :default => "", :null => false
    t.string   "author_email", :limit => 50, :default => "", :null => false
    t.text     "content",                    :default => "", :null => false
    t.string   "status",       :limit => 25, :default => "", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", :force => true do |t|
    t.string   "title",      :limit => 100, :default => "",  :null => false
    t.text     "body",                      :default => "",  :null => false
    t.string   "author",     :limit => 100, :default => "0", :null => false
    t.string   "category",   :limit => 20,  :default => "",  :null => false
    t.string   "status",     :limit => 20,  :default => "",  :null => false
    t.datetime "created_at"
  end

  create_table "users", :force => true do |t|
    t.string  "usermane",        :limit => 25, :default => "", :null => false
    t.string  "hashed_password", :limit => 40, :default => "", :null => false
    t.string  "first_name",      :limit => 25, :default => "", :null => false
    t.string  "last_name",       :limit => 40, :default => "", :null => false
    t.string  "email",           :limit => 50, :default => "", :null => false
    t.string  "display_name",    :limit => 25, :default => "", :null => false
    t.integer "user_level",      :limit => 3,  :default => 0,  :null => false
  end

end
