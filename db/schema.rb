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

ActiveRecord::Schema.define(:version => 20111027135238) do

  create_table "checking_accounts", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "condominium_id", :null => false
  end

  create_table "condominia", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name",              :null => false
    t.string   "address",           :null => false
    t.string   "zip_code",          :null => false
    t.string   "city",              :null => false
    t.string   "province"
    t.string   "fiscal_code"
    t.date     "construction_date"
  end

  create_table "exercises", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "starting_date",  :null => false
    t.date     "ending_date",    :null => false
    t.integer  "condominium_id", :null => false
  end

  create_table "figures", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name", :null => false
    t.string   "last_name",  :null => false
    t.string   "phone"
    t.string   "mobile"
    t.string   "fax"
    t.string   "email"
  end

  create_table "millesimal_charts", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "label",          :null => false
    t.integer  "condominium_id", :null => false
  end

  create_table "millesimals", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "value",               :default => 0.0, :null => false
    t.integer  "millesimal_chart_id",                  :null => false
    t.integer  "unit_id",                              :null => false
  end

  create_table "ownerships", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "starting_date",                :null => false
    t.date     "ending_date"
    t.integer  "figure_id",                    :null => false
    t.integer  "unit_id",                      :null => false
    t.integer  "type_id",       :default => 0, :null => false
  end

  create_table "staircases", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "label",          :null => false
    t.integer  "condominium_id", :null => false
  end

  create_table "types", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "label",      :null => false
    t.string   "category",   :null => false
  end

  create_table "units", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "extension",    :null => false
    t.integer  "staircase_id", :null => false
  end

end
