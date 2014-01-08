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

ActiveRecord::Schema.define(:version => 20140108142742) do

  create_table "attributes", :force => true do |t|
    t.string   "name"
    t.string   "entity_type"
    t.string   "backend_type"
    t.integer  "hydra_attr_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "employees", :force => true do |t|
    t.integer  "hydra_set_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "employees", ["hydra_set_id"], :name => "employees_hydra_set_id_idx"

  create_table "hydra_attribute_sets", :force => true do |t|
    t.integer  "hydra_attribute_id", :null => false
    t.integer  "hydra_set_id",       :null => false
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "hydra_attribute_sets", ["hydra_attribute_id", "hydra_set_id"], :name => "hydra_attribute_sets_idx", :unique => true

  create_table "hydra_attributes", :force => true do |t|
    t.string   "entity_type",   :limit => 32,                    :null => false
    t.string   "name",          :limit => 32,                    :null => false
    t.string   "backend_type",  :limit => 16,                    :null => false
    t.string   "default_value"
    t.boolean  "white_list",                  :default => false, :null => false
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
  end

  add_index "hydra_attributes", ["entity_type", "name"], :name => "hydra_attributes_idx", :unique => true

  create_table "hydra_boolean_employees", :force => true do |t|
    t.integer  "entity_id",          :null => false
    t.integer  "hydra_attribute_id", :null => false
    t.boolean  "value"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "hydra_boolean_employees", ["entity_id", "hydra_attribute_id"], :name => "hydra_boolean_employees_idx", :unique => true

  create_table "hydra_datetime_employees", :force => true do |t|
    t.integer  "entity_id",          :null => false
    t.integer  "hydra_attribute_id", :null => false
    t.datetime "value"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "hydra_datetime_employees", ["entity_id", "hydra_attribute_id"], :name => "hydra_datetime_employees_idx", :unique => true

  create_table "hydra_decimal_employees", :force => true do |t|
    t.integer  "entity_id",                                         :null => false
    t.integer  "hydra_attribute_id",                                :null => false
    t.decimal  "value",              :precision => 10, :scale => 4
    t.datetime "created_at",                                        :null => false
    t.datetime "updated_at",                                        :null => false
  end

  add_index "hydra_decimal_employees", ["entity_id", "hydra_attribute_id"], :name => "hydra_decimal_employees_idx", :unique => true

  create_table "hydra_float_employees", :force => true do |t|
    t.integer  "entity_id",          :null => false
    t.integer  "hydra_attribute_id", :null => false
    t.float    "value"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "hydra_float_employees", ["entity_id", "hydra_attribute_id"], :name => "hydra_float_employees_idx", :unique => true

  create_table "hydra_integer_employees", :force => true do |t|
    t.integer  "entity_id",          :null => false
    t.integer  "hydra_attribute_id", :null => false
    t.integer  "value"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "hydra_integer_employees", ["entity_id", "hydra_attribute_id"], :name => "hydra_integer_employees_idx", :unique => true

  create_table "hydra_sets", :force => true do |t|
    t.string   "entity_type", :limit => 32, :null => false
    t.string   "name",        :limit => 32, :null => false
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "hydra_sets", ["entity_type", "name"], :name => "hydra_sets_idx", :unique => true

  create_table "hydra_string_employees", :force => true do |t|
    t.integer  "entity_id",          :null => false
    t.integer  "hydra_attribute_id", :null => false
    t.string   "value"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "hydra_string_employees", ["entity_id", "hydra_attribute_id"], :name => "hydra_string_employees_idx", :unique => true

  create_table "hydra_text_employees", :force => true do |t|
    t.integer  "entity_id",          :null => false
    t.integer  "hydra_attribute_id", :null => false
    t.text     "value"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "hydra_text_employees", ["entity_id", "hydra_attribute_id"], :name => "hydra_text_employees_idx", :unique => true

end
