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

ActiveRecord::Schema.define(version: 2019_06_13_132241) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "armes", force: :cascade do |t|
    t.string "nom"
    t.integer "puissance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "boucliers", force: :cascade do |t|
    t.string "nom"
    t.integer "protection"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "combats", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "joueurs", force: :cascade do |t|
    t.bigint "personnage_id"
    t.bigint "combat_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "arme_id"
    t.bigint "bouclier_id"
    t.string "result"
    t.index ["arme_id"], name: "index_joueurs_on_arme_id"
    t.index ["bouclier_id"], name: "index_joueurs_on_bouclier_id"
    t.index ["combat_id"], name: "index_joueurs_on_combat_id"
    t.index ["personnage_id"], name: "index_joueurs_on_personnage_id"
  end

  create_table "personnages", force: :cascade do |t|
    t.string "nom"
    t.integer "vie"
    t.integer "attaque"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
  end

  add_foreign_key "joueurs", "armes"
  add_foreign_key "joueurs", "boucliers"
  add_foreign_key "joueurs", "combats"
  add_foreign_key "joueurs", "personnages"
end
