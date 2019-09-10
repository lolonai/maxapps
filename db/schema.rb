# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_09_10_142309) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "albums", force: :cascade do |t|
    t.bigint "groupe_id", null: false
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["groupe_id"], name: "index_albums_on_groupe_id"
  end

  create_table "calendriers", force: :cascade do |t|
    t.bigint "groupe_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["groupe_id"], name: "index_calendriers_on_groupe_id"
  end

  create_table "collections", force: :cascade do |t|
    t.bigint "photo_id", null: false
    t.bigint "album_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["album_id"], name: "index_collections_on_album_id"
    t.index ["photo_id"], name: "index_collections_on_photo_id"
  end

  create_table "events", force: :cascade do |t|
    t.bigint "calendrier_id", null: false
    t.datetime "date"
    t.string "name"
    t.bigint "photo_id", null: false
    t.bigint "album_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["album_id"], name: "index_events_on_album_id"
    t.index ["calendrier_id"], name: "index_events_on_calendrier_id"
    t.index ["photo_id"], name: "index_events_on_photo_id"
  end

  create_table "groupes", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_groupes_on_user_id"
  end

  create_table "membres", force: :cascade do |t|
    t.bigint "groupe_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["groupe_id"], name: "index_membres_on_groupe_id"
    t.index ["user_id"], name: "index_membres_on_user_id"
  end

  create_table "messageries", force: :cascade do |t|
    t.bigint "groupe_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["groupe_id"], name: "index_messageries_on_groupe_id"
  end

  create_table "messages", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "messagerie_id", null: false
    t.text "contenu"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["messagerie_id"], name: "index_messages_on_messagerie_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "photos", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "groupe_id", null: false
    t.datetime "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["groupe_id"], name: "index_photos_on_groupe_id"
    t.index ["user_id"], name: "index_photos_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "albums", "groupes"
  add_foreign_key "calendriers", "groupes"
  add_foreign_key "collections", "albums"
  add_foreign_key "collections", "photos"
  add_foreign_key "events", "albums"
  add_foreign_key "events", "calendriers"
  add_foreign_key "events", "photos"
  add_foreign_key "groupes", "users"
  add_foreign_key "membres", "groupes"
  add_foreign_key "membres", "users"
  add_foreign_key "messageries", "groupes"
  add_foreign_key "messages", "messageries", column: "messagerie_id"
  add_foreign_key "messages", "users"
  add_foreign_key "photos", "groupes"
  add_foreign_key "photos", "users"
end
