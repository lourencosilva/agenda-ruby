# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_07_111052) do

  create_table "brands", force: :cascade do |t|
    t.string "description"
    t.integer "product_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_brands_on_product_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "description"
    t.integer "product_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_categories_on_product_id"
  end

  create_table "departaments", force: :cascade do |t|
    t.string "description"
    t.integer "products_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["products_id"], name: "index_departaments_on_products_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "description"
    t.integer "brand"
    t.integer "category"
    t.float "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "brands", "products"
  add_foreign_key "categories", "products"
  add_foreign_key "departaments", "products", column: "products_id"
end
