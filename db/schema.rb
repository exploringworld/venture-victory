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

ActiveRecord::Schema.define(version: 2018_06_12_191411) do

  create_table "games", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "series_id"
    t.integer "venue_id"
    t.integer "match_type"
    t.integer "first_team"
    t.integer "second_team"
    t.integer "home_team"
    t.integer "first_team_score"
    t.integer "second_team_score"
    t.integer "first_inning_fours"
    t.integer "second_inning_fours"
    t.integer "first_inning_sixes"
    t.integer "second_inning_sixes"
    t.integer "first_inning_wickets"
    t.integer "second_inning_wickets"
    t.text "result"
    t.integer "winning_team"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "order_type"
    t.integer "odds_type"
    t.decimal "invested_amount", precision: 10, scale: 2
    t.decimal "refund_amount", precision: 10, scale: 2
    t.integer "result_type"
    t.integer "game_id"
    t.text "learning"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "series", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "name"
    t.date "start_date"
    t.text "participant_teams"
    t.integer "winner_team"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", limit: 300
    t.integer "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_teams_on_name", unique: true
  end

  create_table "venues", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", limit: 300
    t.string "city", limit: 300
    t.string "country", limit: 300
    t.integer "ground_size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_venues_on_name", unique: true
  end

end
