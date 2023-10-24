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

ActiveRecord::Schema[7.0].define(version: 2023_10_24_152158) do
  create_table "discount_codes", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.text "description", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name", null: false
    t.decimal "price", default: "0.0"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_discounts", force: :cascade do |t|
    t.integer "order_id"
    t.integer "discount_code_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["discount_code_id"], name: "index_order_discounts_on_discount_code_id"
    t.index ["order_id"], name: "index_order_discounts_on_order_id"
  end

  create_table "order_promos", force: :cascade do |t|
    t.integer "order_id"
    t.integer "promo_code_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_order_promos_on_order_id"
    t.index ["promo_code_id"], name: "index_order_promos_on_promo_code_id"
  end

  create_table "orders", force: :cascade do |t|
    t.decimal "total_price", default: "0.0", null: false
    t.boolean "completed", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pizza_order_ing_adds", force: :cascade do |t|
    t.integer "pizza_order_id"
    t.integer "ingredient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ingredient_id"], name: "index_pizza_order_ing_adds_on_ingredient_id"
    t.index ["pizza_order_id"], name: "index_pizza_order_ing_adds_on_pizza_order_id"
  end

  create_table "pizza_order_ing_removes", force: :cascade do |t|
    t.integer "pizza_order_id"
    t.integer "ingredient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ingredient_id"], name: "index_pizza_order_ing_removes_on_ingredient_id"
    t.index ["pizza_order_id"], name: "index_pizza_order_ing_removes_on_pizza_order_id"
  end

  create_table "pizza_orders", force: :cascade do |t|
    t.integer "order_id"
    t.integer "pizza_id"
    t.integer "size", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_pizza_orders_on_order_id"
    t.index ["pizza_id"], name: "index_pizza_orders_on_pizza_id"
  end

  create_table "pizzas", force: :cascade do |t|
    t.string "name", null: false
    t.decimal "price", default: "0.0", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "promo_codes", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.text "description", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
