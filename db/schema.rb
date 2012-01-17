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

ActiveRecord::Schema.define(:version => 20120117161955) do

  create_table "articles", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "auteur"
    t.date     "date_pub"
    t.string   "provenance"
    t.string   "document_file_name"
    t.integer  "document_file_size"
    t.string   "document_content_type"
    t.datetime "document_updated_at"
  end

  create_table "events", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "place"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "federation"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "galleries", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.date     "date"
    t.integer  "gallery_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "paragraphs", :force => true do |t|
    t.text     "content"
    t.string   "photo1_file_name"
    t.string   "photo1_content_type"
    t.integer  "photo1_file_size"
    t.datetime "photo1_updated_at"
    t.string   "photo2_file_name"
    t.string   "photo2_content_type"
    t.integer  "photo2_file_size"
    t.datetime "photo2_updated_at"
    t.string   "photo3_file_name"
    t.string   "photo3_content_type"
    t.integer  "photo3_file_size"
    t.datetime "photo3_updated_at"
    t.integer  "article_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "partenaires", :force => true do |t|
    t.string   "name"
    t.string   "adresse"
    t.string   "cp"
    t.string   "ville"
    t.string   "telephone"
    t.string   "fax"
    t.string   "email"
    t.string   "weburl"
    t.string   "logo_file_name"
    t.integer  "logo_file_size"
    t.string   "logo_content_type"
    t.datetime "logo_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "programmes", :force => true do |t|
    t.date     "annee"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "fichier_file_name"
    t.string   "fichier_content_type"
    t.integer  "fichier_file_size"
    t.datetime "fichier_updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "password_salt",                       :default => "", :null => false
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "videos", :force => true do |t|
    t.text     "youtube_url"
    t.text     "vimeo_url"
    t.string   "titre"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
