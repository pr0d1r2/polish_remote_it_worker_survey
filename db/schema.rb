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

ActiveRecord::Schema.define(:version => 20110203164450) do

  create_table "pss_questionaires", :force => true do |t|
    t.integer  "field_1",    :limit => 2, :default => 9, :null => false
    t.integer  "field_2",    :limit => 2, :default => 9, :null => false
    t.integer  "field_3",    :limit => 2, :default => 9, :null => false
    t.integer  "field_4",    :limit => 2, :default => 9, :null => false
    t.integer  "field_5",    :limit => 2, :default => 9, :null => false
    t.integer  "field_6",    :limit => 2, :default => 9, :null => false
    t.integer  "field_7",    :limit => 2, :default => 9, :null => false
    t.integer  "field_8",    :limit => 2, :default => 9, :null => false
    t.integer  "field_9",    :limit => 2, :default => 9, :null => false
    t.integer  "field_10",   :limit => 2, :default => 9, :null => false
    t.integer  "field_11",   :limit => 2, :default => 9, :null => false
    t.integer  "field_12",   :limit => 2, :default => 9, :null => false
    t.integer  "field_13",   :limit => 2, :default => 9, :null => false
    t.integer  "field_14",   :limit => 2, :default => 9, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
