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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150211133058) do

  create_table "adresses", force: true do |t|
    t.integer "pro_sante_id"
    t.string  "name"
    t.float   "latitude"
    t.float   "longitude"
    t.boolean "gmaps"
  end

  add_index "adresses", ["pro_sante_id"], name: "index_adresses_on_pro_sante_id"

  create_table "pro_santes", force: true do |t|
    t.string   "nom"
    t.string   "prenom"
    t.string   "specialte"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
