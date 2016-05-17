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

ActiveRecord::Schema.define(version: 20160517010526) do

  create_table "cinemas", force: :cascade do |t|
    t.string   "name"
    t.string   "city"
    t.string   "content"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "logo"
    t.string   "address"
    t.string   "business_hours"
    t.string   "phone"
    t.string   "district"
  end

  create_table "comments", force: :cascade do |t|
    t.string   "content"
    t.integer  "rating"
    t.integer  "movie_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["movie_id"], name: "index_comments_on_movie_id"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "follows", force: :cascade do |t|
    t.string   "follower_type"
    t.integer  "follower_id"
    t.string   "followable_type"
    t.integer  "followable_id"
    t.datetime "created_at"
  end

  add_index "follows", ["followable_id", "followable_type"], name: "fk_followables"
  add_index "follows", ["follower_id", "follower_type"], name: "fk_follows"

  create_table "likes", force: :cascade do |t|
    t.string   "liker_type"
    t.integer  "liker_id"
    t.string   "likeable_type"
    t.integer  "likeable_id"
    t.datetime "created_at"
    t.string   "like_type"
  end

  add_index "likes", ["likeable_id", "likeable_type"], name: "fk_likeables"
  add_index "likes", ["liker_id", "liker_type"], name: "fk_likes"

  create_table "messages", force: :cascade do |t|
    t.string   "topic"
    t.text     "body"
    t.integer  "received_messageable_id"
    t.string   "received_messageable_type"
    t.integer  "sent_messageable_id"
    t.string   "sent_messageable_type"
    t.boolean  "opened",                     default: false
    t.boolean  "recipient_delete",           default: false
    t.boolean  "sender_delete",              default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ancestry"
    t.boolean  "recipient_permanent_delete", default: false
    t.boolean  "sender_permanent_delete",    default: false
  end

  add_index "messages", ["ancestry"], name: "index_messages_on_ancestry"
  add_index "messages", ["sent_messageable_id", "received_messageable_id"], name: "acts_as_messageable_ids"

  create_table "movies", force: :cascade do |t|
    t.string   "name"
    t.string   "alias"
    t.integer  "year"
    t.string   "content"
    t.datetime "created_at",                                          null: false
    t.datetime "updated_at",                                          null: false
    t.string   "poster"
    t.string   "star"
    t.string   "director"
    t.string   "writer"
    t.string   "country"
    t.integer  "runtime"
    t.string   "aka"
    t.string   "genre"
    t.string   "release_date"
    t.decimal  "ratings",       precision: 3, scale: 2, default: 0.0
    t.integer  "ratings_count",                         default: 0
    t.integer  "mtime_id"
  end

  create_table "photos", force: :cascade do |t|
    t.integer  "movie_id"
    t.string   "title"
    t.string   "photo_type"
    t.string   "url"
    t.string   "url_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "photos", ["movie_id"], name: "index_photos_on_movie_id"

  create_table "timetables", force: :cascade do |t|
    t.integer  "movie_id"
    t.integer  "cinema_id"
    t.date     "date"
    t.time     "time"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "room"
    t.string   "prices",     default: "{}", null: false
  end

  add_index "timetables", ["cinema_id"], name: "index_timetables_on_cinema_id"
  add_index "timetables", ["movie_id"], name: "index_timetables_on_movie_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",               default: "", null: false
    t.string   "encrypted_password",  default: "", null: false
    t.datetime "remember_created_at"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "gender"
    t.string   "astro"
    t.string   "city"
    t.string   "intro"
    t.string   "avatar"
    t.string   "name"
    t.boolean  "admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
