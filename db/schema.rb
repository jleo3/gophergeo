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

ActiveRecord::Schema.define(:version => 20110407122227) do

  create_table "locations", :force => true do |t|
    t.float    "lat"
    t.float    "long"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "simplegeo_id"
    t.string   "name"
    t.string   "city"
    t.string   "address"
    t.string   "province"
    t.string   "country"
    t.string   "postal_code"
    t.text     "website"
    t.string   "phone"
    t.string   "owner"
    t.string   "category"
    t.string   "subcategory"
    t.string   "category_type"
    t.string   "json_link"
  end

  add_index "locations", ["simplegeo_id"], :name => "index_locations_on_simplegeo_id"

end
