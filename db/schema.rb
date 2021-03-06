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

ActiveRecord::Schema.define(:version => 299901015011303) do

  create_table "forecast_points", :force => true do |t|
    t.float   "lat"
    t.float   "lon"
    t.string  "name"
    t.float   "upper_throttle"
    t.float   "lower_throttle"
    t.integer "utc"
  end

  create_table "forecasts", :force => true do |t|
    t.datetime "grib_date"
    t.datetime "forecast_date"
    t.string   "var_name"
    t.string   "lat"
    t.string   "lon"
    t.float    "value"
  end

  create_table "grib_meta", :force => true do |t|
    t.datetime "grib_date"
    t.string   "noaa_filename"
    t.string   "model_run"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "variables", :force => true do |t|
    t.string   "name"
    t.string   "human_name"
    t.string   "description"
    t.float    "throttle"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
