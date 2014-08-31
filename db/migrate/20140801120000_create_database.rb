class CreateDatabase < ActiveRecord::Migration

  def self.up

    enable_extension "plpgsql"

    create_table "albums", force: true do |t|
      t.string   "title"
      t.string   "description"
      t.integer  "user_id"
      t.boolean  "private", default: false, null: false
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "albums", ["user_id"], name: "index_albums_on_user_id", using: :btree

    create_table "comments", force: true do |t|
      t.string   "commenter"
      t.text     "body"
      t.integer  "photo_id"
      t.integer  "user_id"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "comments", ["photo_id"], name: "index_comments_on_photo_id", using: :btree
    add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

    create_table "photos", force: true do |t|
      t.string   "image"
      t.string   "image_file_name"
      t.string   "image_content_type"
      t.integer  "image_file_size"
      t.datetime "image_updated_at"
      t.string   "title"
      t.string   "description"
      t.integer  "album_id"
      t.integer  "user_id"
      t.boolean  "private", default: false, null: false
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "photos", ["album_id"], name: "index_photos_on_album_id", using: :btree
    add_index "photos", ["user_id"], name: "index_photos_on_user_id", using: :btree

    create_table "users", force: true do |t|
      t.string   "email",                  default: "", null: false
      t.string   "encrypted_password",     default: "", null: false
      t.string   "username",               default: "", null: false
      t.string   "reset_password_token"
      t.datetime "reset_password_sent_at"
      t.datetime "remember_created_at"
      t.integer  "sign_in_count",          default: 0,  null: false
      t.datetime "current_sign_in_at"
      t.datetime "last_sign_in_at"
      t.string   "current_sign_in_ip"
      t.string   "last_sign_in_ip"
      t.string   "confirmation_token"
      t.string   "unconfirmed_email"
      t.datetime "confirmed_at"
      t.datetime "confirmation_sent_at"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
    add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
    add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  end

end
