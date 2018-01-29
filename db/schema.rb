ActiveRecord::Schema.define(version: 2018_01_28_011156) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "additives", force: :cascade do |t|
    t.string "CSF"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "brand_id"
  end

  create_table "brains", force: :cascade do |t|
    t.string "ProductName"
    t.string "CSF"
    t.string "CompanyName"
    t.string "BrandName"
    t.string "PrimaryCategory"
    t.string "SubCategory"
    t.string "ChemicalName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "brands", force: :cascade do |t|
    t.string "BrandName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chemicals", force: :cascade do |t|
    t.string "ChemicalName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "brand_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "ProductName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "brand_id"
  end

end
