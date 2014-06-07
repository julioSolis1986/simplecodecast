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

ActiveRecord::Schema.define(:version => 20130809013216) do

  create_table "address", :force => true do |t|
    t.string   "street"
    t.string   "complement"
    t.string   "number"
    t.string   "neighbourhood"
    t.string   "postal_code"
    t.integer  "city_id"
    t.integer  "state_id"
    t.string   "country"
    t.integer  "addressable_id"
    t.string   "addressable_type"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "anamnesis", :force => true do |t|
    t.string   "question_1_01"
    t.string   "question_2_01"
    t.string   "question_2_02"
    t.string   "question_3_01"
    t.string   "question_3_02"
    t.string   "question_3_03"
    t.string   "question_3_04"
    t.string   "question_3_05"
    t.string   "question_3_06"
    t.string   "question_3_07"
    t.integer  "physical_assessments_id"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "assessment_perimeters", :force => true do |t|
    t.string  "type"
    t.string  "name"
    t.decimal "value_1",       :precision => 10, :scale => 4
    t.decimal "value_2",       :precision => 10, :scale => 4
    t.integer "perimeters_id"
  end

  create_table "body_compositions", :force => true do |t|
    t.integer  "physical_assessments_id"
    t.string   "protocol"
    t.decimal  "weight",                  :precision => 10, :scale => 4
    t.decimal  "height",                  :precision => 10, :scale => 4
    t.decimal  "tricep",                  :precision => 10, :scale => 4
    t.decimal  "subscapular",             :precision => 10, :scale => 4
    t.decimal  "chest",                   :precision => 10, :scale => 4
    t.decimal  "midaxillary",             :precision => 10, :scale => 4
    t.decimal  "suprailiac",              :precision => 10, :scale => 4
    t.decimal  "abdominal",               :precision => 10, :scale => 4
    t.decimal  "thigh",                   :precision => 10, :scale => 4
    t.datetime "created_at",                                             :null => false
    t.datetime "updated_at",                                             :null => false
  end

  create_table "cardiorespiratory_assessments", :force => true do |t|
    t.integer  "physical_assessments_id"
    t.string   "protocol"
    t.decimal  "total_distance",          :precision => 10, :scale => 4
    t.decimal  "maximum_heart_rate",      :precision => 10, :scale => 4
    t.datetime "created_at",                                             :null => false
    t.datetime "updated_at",                                             :null => false
  end

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.boolean  "capital",    :default => false
    t.integer  "state_id"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "clients", :force => true do |t|
    t.string   "name"
    t.date     "birth_date"
    t.integer  "gender_id"
    t.string   "cpf"
    t.string   "rg"
    t.integer  "ethnicity_id"
    t.text     "observation"
    t.datetime "deleted_at"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "days", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "difficulty_exercises", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "emails", :force => true do |t|
    t.string   "email"
    t.integer  "emailable_id"
    t.string   "emailable_type"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "ethnicities", :force => true do |t|
    t.string "name"
  end

  create_table "exercise_examples", :force => true do |t|
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "exercises_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "exercise_exercise_sheets", :force => true do |t|
    t.integer  "exercises_id"
    t.integer  "exercise_sheets_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "exercise_sheets", :force => true do |t|
    t.integer  "training_series_id"
    t.integer  "exercise_types_id"
    t.string   "series"
    t.string   "duration"
    t.string   "intensity"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "exercise_types", :force => true do |t|
    t.string   "name"
    t.datetime "deleted_at"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "exercises", :force => true do |t|
    t.string   "name"
    t.integer  "exercise_types_id"
    t.integer  "difficulty_exercises_id"
    t.integer  "muscle_groups_id"
    t.text     "description"
    t.datetime "deleted_at"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "genders", :force => true do |t|
    t.string "name"
  end

  create_table "muscle_groups", :force => true do |t|
    t.integer  "muscle_groups_id"
    t.string   "name"
    t.text     "description"
    t.datetime "deleted_at"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "neuromotors", :force => true do |t|
    t.integer  "physical_assessments_id"
    t.integer  "abdominal_repetitions"
    t.integer  "pushup_repetitions"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "perimeters", :force => true do |t|
    t.integer  "physical_assessments_id"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "phones", :force => true do |t|
    t.string   "number"
    t.string   "ext"
    t.integer  "phonable_id"
    t.string   "phonable_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "physical_assessments", :force => true do |t|
    t.datetime "deleted_at"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.boolean  "status"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "repetition_exercise_sheets", :force => true do |t|
    t.integer  "exercise_sheets_id"
    t.string   "repetition"
    t.string   "interval"
    t.string   "load"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "sheets", :force => true do |t|
    t.integer  "client_id"
    t.date     "begin"
    t.date     "end"
    t.string   "goal"
    t.text     "observation"
    t.boolean  "example"
    t.datetime "deleted_at"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "states", :force => true do |t|
    t.string   "name"
    t.string   "acronym"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tags", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "tageable_id"
    t.string   "tageable_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "tags", ["tageable_id"], :name => "index_tags_on_tageable_id"

  create_table "traceabilities", :force => true do |t|
    t.integer  "traceable_id"
    t.string   "traceable_type"
    t.integer  "users_id"
    t.string   "action"
    t.text     "message"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "training_series", :force => true do |t|
    t.integer  "sheets_id"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        :default => 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "authentication_token"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
    t.date     "birth_date"
    t.datetime "deleted_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "users", ["authentication_token"], :name => "index_users_on_authentication_token", :unique => true
  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["unlock_token"], :name => "index_users_on_unlock_token", :unique => true

end
