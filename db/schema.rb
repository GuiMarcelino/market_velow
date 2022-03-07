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

ActiveRecord::Schema.define(version: 2022_03_07_232143) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "orders", force: :cascade do |t|
    t.datetime "date_order"
    t.bigint "product_id", null: false
    t.bigint "user_id", null: false
    t.boolean "active", default: true, null: false
    t.bigint "created_by_id"
    t.bigint "updated_by_id"
    t.datetime "deleted_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "value_total"
    t.index ["active"], name: "index_orders_on_active"
    t.index ["created_by_id"], name: "index_orders_on_created_by_id"
    t.index ["deleted_at"], name: "index_orders_on_deleted_at"
    t.index ["product_id"], name: "index_orders_on_product_id"
    t.index ["updated_by_id"], name: "index_orders_on_updated_by_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "code_bar"
    t.float "price"
    t.boolean "active", default: true, null: false
    t.bigint "created_by_id"
    t.bigint "updated_by_id"
    t.datetime "deleted_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["active"], name: "index_products_on_active"
    t.index ["created_by_id"], name: "index_products_on_created_by_id"
    t.index ["deleted_at"], name: "index_products_on_deleted_at"
    t.index ["updated_by_id"], name: "index_products_on_updated_by_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "provider", null: false
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "name"
    t.string "email", limit: 60, default: "", null: false
    t.boolean "active", default: true, null: false
    t.boolean "is_admin", default: false
    t.integer "created_by_id"
    t.integer "updated_by_id"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "orders", "products"
  add_foreign_key "orders", "users"
  add_foreign_key "orders", "users", column: "created_by_id"
  add_foreign_key "orders", "users", column: "updated_by_id"
  add_foreign_key "products", "users", column: "created_by_id"
  add_foreign_key "products", "users", column: "updated_by_id"
end
