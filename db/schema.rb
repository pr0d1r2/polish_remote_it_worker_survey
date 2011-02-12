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

ActiveRecord::Schema.define(:version => 20110212042631) do

  create_table "cope_loss_questionaires", :force => true do |t|
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
    t.integer  "field_15",   :limit => 2, :default => 9, :null => false
    t.integer  "field_16",   :limit => 2, :default => 9, :null => false
    t.integer  "field_17",   :limit => 2, :default => 9, :null => false
    t.integer  "field_18",   :limit => 2, :default => 9, :null => false
    t.integer  "field_19",   :limit => 2, :default => 9, :null => false
    t.integer  "field_20",   :limit => 2, :default => 9, :null => false
    t.integer  "field_21",   :limit => 2, :default => 9, :null => false
    t.integer  "field_22",   :limit => 2, :default => 9, :null => false
    t.integer  "field_23",   :limit => 2, :default => 9, :null => false
    t.integer  "field_24",   :limit => 2, :default => 9, :null => false
    t.integer  "field_25",   :limit => 2, :default => 9, :null => false
    t.integer  "field_26",   :limit => 2, :default => 9, :null => false
    t.integer  "field_27",   :limit => 2, :default => 9, :null => false
    t.integer  "field_28",   :limit => 2, :default => 9, :null => false
    t.integer  "field_29",   :limit => 2, :default => 9, :null => false
    t.integer  "field_30",   :limit => 2, :default => 9, :null => false
    t.integer  "field_31",   :limit => 2, :default => 9, :null => false
    t.integer  "field_32",   :limit => 2, :default => 9, :null => false
    t.integer  "field_33",   :limit => 2, :default => 9, :null => false
    t.integer  "field_34",   :limit => 2, :default => 9, :null => false
    t.integer  "field_35",   :limit => 2, :default => 9, :null => false
    t.integer  "field_36",   :limit => 2, :default => 9, :null => false
    t.integer  "field_37",   :limit => 2, :default => 9, :null => false
    t.integer  "field_38",   :limit => 2, :default => 9, :null => false
    t.integer  "field_39",   :limit => 2, :default => 9, :null => false
    t.integer  "field_40",   :limit => 2, :default => 9, :null => false
    t.integer  "field_41",   :limit => 2, :default => 9, :null => false
    t.integer  "field_42",   :limit => 2, :default => 9, :null => false
    t.integer  "field_43",   :limit => 2, :default => 9, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "eas_d_adult_questionaires", :force => true do |t|
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
    t.integer  "field_15",   :limit => 2, :default => 9, :null => false
    t.integer  "field_16",   :limit => 2, :default => 9, :null => false
    t.integer  "field_17",   :limit => 2, :default => 9, :null => false
    t.integer  "field_18",   :limit => 2, :default => 9, :null => false
    t.integer  "field_19",   :limit => 2, :default => 9, :null => false
    t.integer  "field_20",   :limit => 2, :default => 9, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "olbi_questionaires", :force => true do |t|
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
    t.integer  "field_15",   :limit => 2, :default => 9, :null => false
    t.integer  "field_16",   :limit => 2, :default => 9, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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

  create_table "ssp_questionaires", :force => true do |t|
    t.integer  "field_1",    :limit => 2, :default => 9, :null => false
    t.integer  "field_2",    :limit => 2, :default => 9, :null => false
    t.integer  "field_3",    :limit => 2, :default => 9, :null => false
    t.integer  "field_4",    :limit => 2, :default => 9, :null => false
    t.integer  "field_5",    :limit => 2, :default => 9, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
