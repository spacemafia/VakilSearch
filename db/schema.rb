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

ActiveRecord::Schema.define(version: 20141111091322) do

  create_table "answers", force: true do |t|
    t.string   "answer_content"
    t.integer  "user_id"
    t.integer  "question_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "cached_votes_total",      default: 0
    t.integer  "cached_votes_score",      default: 0
    t.integer  "cached_votes_up",         default: 0
    t.integer  "cached_votes_down",       default: 0
    t.integer  "cached_weighted_score",   default: 0
    t.integer  "cached_weighted_total",   default: 0
    t.float    "cached_weighted_average", default: 0.0
  end

  add_index "answers", ["cached_votes_down"], name: "index_answers_on_cached_votes_down"
  add_index "answers", ["cached_votes_score"], name: "index_answers_on_cached_votes_score"
  add_index "answers", ["cached_votes_total"], name: "index_answers_on_cached_votes_total"
  add_index "answers", ["cached_votes_up"], name: "index_answers_on_cached_votes_up"
  add_index "answers", ["cached_weighted_average"], name: "index_answers_on_cached_weighted_average"
  add_index "answers", ["cached_weighted_score"], name: "index_answers_on_cached_weighted_score"
  add_index "answers", ["cached_weighted_total"], name: "index_answers_on_cached_weighted_total"

  create_table "articles", force: true do |t|
    t.string   "title"
    t.integer  "user_id"
    t.string   "introduction"
    t.string   "deck"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "headingone"
    t.string   "bodyone"
    t.string   "headingtwo"
    t.string   "bodytwo"
    t.string   "headingthree"
    t.string   "bodythree"
    t.string   "headingfour"
    t.string   "bodyfour"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "articles", ["user_id", "created_at"], name: "index_articles_on_user_id_and_created_at"

  create_table "questions", force: true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "morecontent"
  end

  add_index "questions", ["user_id", "created_at"], name: "index_questions_on_user_id_and_created_at"

  create_table "relationships", force: true do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "relationships", ["follower_id", "followed_id"], name: "index_relationships_on_follower_id_and_followed_id", unique: true

  create_table "sectionfours", force: true do |t|
    t.string   "contentfour"
    t.integer  "article_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "cached_votes_total",      default: 0
    t.integer  "cached_votes_score",      default: 0
    t.integer  "cached_votes_up",         default: 0
    t.integer  "cached_votes_down",       default: 0
    t.integer  "cached_weighted_score",   default: 0
    t.integer  "cached_weighted_total",   default: 0
    t.float    "cached_weighted_average", default: 0.0
  end

  add_index "sectionfours", ["cached_votes_down"], name: "index_sectionfours_on_cached_votes_down"
  add_index "sectionfours", ["cached_votes_score"], name: "index_sectionfours_on_cached_votes_score"
  add_index "sectionfours", ["cached_votes_total"], name: "index_sectionfours_on_cached_votes_total"
  add_index "sectionfours", ["cached_votes_up"], name: "index_sectionfours_on_cached_votes_up"
  add_index "sectionfours", ["cached_weighted_average"], name: "index_sectionfours_on_cached_weighted_average"
  add_index "sectionfours", ["cached_weighted_score"], name: "index_sectionfours_on_cached_weighted_score"
  add_index "sectionfours", ["cached_weighted_total"], name: "index_sectionfours_on_cached_weighted_total"

  create_table "sectionones", force: true do |t|
    t.string   "contentone"
    t.integer  "article_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "cached_votes_total",      default: 0
    t.integer  "cached_votes_score",      default: 0
    t.integer  "cached_votes_up",         default: 0
    t.integer  "cached_votes_down",       default: 0
    t.integer  "cached_weighted_score",   default: 0
    t.integer  "cached_weighted_total",   default: 0
    t.float    "cached_weighted_average", default: 0.0
  end

  add_index "sectionones", ["cached_votes_down"], name: "index_sectionones_on_cached_votes_down"
  add_index "sectionones", ["cached_votes_score"], name: "index_sectionones_on_cached_votes_score"
  add_index "sectionones", ["cached_votes_total"], name: "index_sectionones_on_cached_votes_total"
  add_index "sectionones", ["cached_votes_up"], name: "index_sectionones_on_cached_votes_up"
  add_index "sectionones", ["cached_weighted_average"], name: "index_sectionones_on_cached_weighted_average"
  add_index "sectionones", ["cached_weighted_score"], name: "index_sectionones_on_cached_weighted_score"
  add_index "sectionones", ["cached_weighted_total"], name: "index_sectionones_on_cached_weighted_total"

  create_table "sectionthrees", force: true do |t|
    t.string   "contentthree"
    t.integer  "article_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "cached_votes_total",      default: 0
    t.integer  "cached_votes_score",      default: 0
    t.integer  "cached_votes_up",         default: 0
    t.integer  "cached_votes_down",       default: 0
    t.integer  "cached_weighted_score",   default: 0
    t.integer  "cached_weighted_total",   default: 0
    t.float    "cached_weighted_average", default: 0.0
  end

  add_index "sectionthrees", ["cached_votes_down"], name: "index_sectionthrees_on_cached_votes_down"
  add_index "sectionthrees", ["cached_votes_score"], name: "index_sectionthrees_on_cached_votes_score"
  add_index "sectionthrees", ["cached_votes_total"], name: "index_sectionthrees_on_cached_votes_total"
  add_index "sectionthrees", ["cached_votes_up"], name: "index_sectionthrees_on_cached_votes_up"
  add_index "sectionthrees", ["cached_weighted_average"], name: "index_sectionthrees_on_cached_weighted_average"
  add_index "sectionthrees", ["cached_weighted_score"], name: "index_sectionthrees_on_cached_weighted_score"
  add_index "sectionthrees", ["cached_weighted_total"], name: "index_sectionthrees_on_cached_weighted_total"

  create_table "sectiontwos", force: true do |t|
    t.string   "contenttwo"
    t.integer  "article_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "cached_votes_total",      default: 0
    t.integer  "cached_votes_score",      default: 0
    t.integer  "cached_votes_up",         default: 0
    t.integer  "cached_votes_down",       default: 0
    t.integer  "cached_weighted_score",   default: 0
    t.integer  "cached_weighted_total",   default: 0
    t.float    "cached_weighted_average", default: 0.0
  end

  add_index "sectiontwos", ["cached_votes_down"], name: "index_sectiontwos_on_cached_votes_down"
  add_index "sectiontwos", ["cached_votes_score"], name: "index_sectiontwos_on_cached_votes_score"
  add_index "sectiontwos", ["cached_votes_total"], name: "index_sectiontwos_on_cached_votes_total"
  add_index "sectiontwos", ["cached_votes_up"], name: "index_sectiontwos_on_cached_votes_up"
  add_index "sectiontwos", ["cached_weighted_average"], name: "index_sectiontwos_on_cached_weighted_average"
  add_index "sectiontwos", ["cached_weighted_score"], name: "index_sectiontwos_on_cached_weighted_score"
  add_index "sectiontwos", ["cached_weighted_total"], name: "index_sectiontwos_on_cached_weighted_total"

  create_table "surveys", force: true do |t|
    t.string   "qone"
    t.string   "qtwo"
    t.string   "qthree"
    t.string   "qfour"
    t.string   "qfive"
    t.string   "qsix"
    t.string   "qseven"
    t.string   "qeight"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "taggings", force: true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true
  add_index "taggings", ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", force: true do |t|
    t.string  "name"
    t.integer "taggings_count", default: 0
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

  create_table "votes", force: true do |t|
    t.integer  "votable_id"
    t.string   "votable_type"
    t.integer  "voter_id"
    t.string   "voter_type"
    t.boolean  "vote_flag"
    t.string   "vote_scope"
    t.integer  "vote_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "votes", ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope"
  add_index "votes", ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope"

end
