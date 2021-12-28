ActiveRecord::Schema.define(version: 2021_12_27_201635) do

  create_table "houses", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "prince"
    t.integer "rooms"
    t.integer "bathrooms"
    t.string "picture_one"
    t.string "picture_two"
    t.string "picture_three"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_houses_on_user_id"
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

end
