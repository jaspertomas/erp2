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

ActiveRecord::Schema.define(:version => 20130618081535) do

  create_table "account_categories", :force => true do |t|
    t.string   "name"
    t.string   "code"
    t.integer  "account_type_id"
    t.string   "parent_code"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "account_entries", :force => true do |t|
    t.integer  "account_id"
    t.decimal  "qty"
    t.date     "date"
    t.decimal  "balance"
    t.string   "ref_class"
    t.integer  "ref_id"
    t.integer  "priority"
    t.string   "type"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "account_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "accounts", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.integer  "account_type_id"
    t.integer  "account_category_id"
    t.boolean  "is_special"
    t.decimal  "currentqty"
    t.date     "date"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "brands", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cheque_payments", :force => true do |t|
    t.integer  "payment_id"
    t.string   "type",       :limit => 10
    t.decimal  "amount"
    t.date     "chequedate"
    t.string   "status",     :limit => 20
    t.date     "cleardate"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "customers", :force => true do |t|
    t.string   "name"
    t.string   "tin_no"
    t.string   "address"
    t.string   "phone1"
    t.string   "phone2"
    t.string   "faxnum"
    t.string   "email"
    t.string   "note"
    t.string   "rep"
    t.string   "repno"
    t.string   "rep2"
    t.string   "rep2no"
    t.string   "taxitem"
    t.string   "notepad"
    t.string   "salutation"
    t.boolean  "is_suki"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "employees", :force => true do |t|
    t.string   "name"
    t.integer  "commission"
    t.boolean  "is_technician"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "events", :force => true do |t|
    t.string   "type"
    t.string   "parent_class"
    t.integer  "parent_id"
    t.string   "parent_name"
    t.string   "child_class"
    t.string   "children_id"
    t.date     "date"
    t.decimal  "amount"
    t.string   "detail1"
    t.string   "detail2"
    t.string   "detail3"
    t.boolean  "is_cancelled"
    t.date     "checkcleardate"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "invoice_details", :force => true do |t|
    t.string   "barcode"
    t.integer  "invoice_id"
    t.integer  "product_id"
    t.string   "description"
    t.decimal  "discrate"
    t.decimal  "discamt"
    t.boolean  "is_cancelled"
    t.decimal  "qty"
    t.decimal  "price"
    t.decimal  "unittotal"
    t.decimal  "total"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "invoice_payments", :force => true do |t|
    t.integer  "invoice_id"
    t.string   "type",       :limit => 10
    t.decimal  "amount"
    t.date     "date"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "invoice_templates", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "invoices", :force => true do |t|
    t.integer  "customer_id"
    t.string   "customer_name"
    t.string   "invno"
    t.string   "ponumber"
    t.decimal  "payonly"
    t.decimal  "total"
    t.string   "cheque"
    t.date     "chequedate"
    t.date     "date"
    t.date     "duedate"
    t.date     "datepaid"
    t.integer  "terms_id"
    t.integer  "salesman_id"
    t.integer  "technician_id"
    t.integer  "template_id"
    t.decimal  "cash"
    t.decimal  "chequeamt"
    t.decimal  "credit"
    t.string   "discrate"
    t.decimal  "discamt"
    t.string   "saletype"
    t.decimal  "dsrdeduction"
    t.decimal  "balance"
    t.string   "chequedata"
    t.date     "checkcleardate"
    t.boolean  "checkcollectevents"
    t.text     "notes"
    t.string   "status"
    t.boolean  "hidden"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "notes", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "parent_id"
    t.integer  "priority"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "pricelists", :force => true do |t|
    t.string   "name"
    t.date     "date"
    t.integer  "vendor_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "product_categories", :force => true do |t|
    t.string   "name"
    t.integer  "producttype_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "product_types", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "parent_id"
    t.integer  "priority"
    t.string   "category1"
    t.string   "category2"
    t.string   "category3"
    t.string   "category4"
    t.string   "category5"
    t.string   "category6"
    t.string   "category7"
    t.string   "category8"
    t.string   "category9"
    t.string   "category10"
    t.string   "path_ids"
    t.string   "path"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.integer  "brand_id"
    t.integer  "producttype_id"
    t.decimal  "qty"
    t.string   "category1"
    t.string   "category2"
    t.string   "category3"
    t.string   "category4"
    t.string   "category5"
    t.string   "category6"
    t.string   "category7"
    t.string   "category8"
    t.string   "category9"
    t.string   "category10"
    t.boolean  "publish"
    t.boolean  "monitored"
    t.string   "barcode"
    t.boolean  "is_service"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "purchase_details", :force => true do |t|
    t.integer  "purchase_id"
    t.string   "description"
    t.decimal  "qty"
    t.decimal  "price"
    t.decimal  "total"
    t.decimal  "tax"
    t.integer  "product_id"
    t.string   "barcode"
    t.string   "discrate"
    t.decimal  "discamt"
    t.boolean  "is_cancelled"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "purchase_payments", :force => true do |t|
    t.integer  "purchase_id"
    t.string   "type",        :limit => 10
    t.decimal  "amount"
    t.date     "date"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "purchase_templates", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "purchases", :force => true do |t|
    t.string   "pono"
    t.string   "invno"
    t.decimal  "total"
    t.decimal  "tax"
    t.integer  "vendor_id"
    t.string   "vendor_name"
    t.integer  "terms_id"
    t.integer  "employee_id"
    t.integer  "template_id"
    t.date     "date"
    t.date     "datereceived"
    t.date     "duedate"
    t.string   "vendor_invoice"
    t.string   "discrate"
    t.decimal  "discamt"
    t.string   "status"
    t.string   "type"
    t.decimal  "cash"
    t.decimal  "cheque"
    t.decimal  "credit"
    t.string   "chequeno"
    t.date     "chequedate"
    t.decimal  "balance"
    t.string   "chequedata"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "quotes", :force => true do |t|
    t.date     "date"
    t.integer  "vendor_id"
    t.integer  "product_id"
    t.decimal  "price"
    t.string   "discrate"
    t.decimal  "discamt"
    t.string   "ref_class"
    t.integer  "ref_id"
    t.decimal  "total"
    t.boolean  "mine"
    t.boolean  "is_cancelled"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "settings", :force => true do |t|
    t.string   "name"
    t.string   "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "stock_entries", :force => true do |t|
    t.date     "date"
    t.decimal  "qty"
    t.decimal  "balance"
    t.integer  "stock_id"
    t.string   "ref_class"
    t.integer  "ref_id"
    t.boolean  "is_cancelled"
    t.integer  "priority"
    t.string   "type"
    t.string   "description"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "stocks", :force => true do |t|
    t.integer  "warehouse_id"
    t.integer  "product_id"
    t.decimal  "currentqty"
    t.date     "date"
    t.decimal  "quota"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "subsidiaries", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.string   "account_code"
    t.integer  "fund_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "terms", :force => true do |t|
    t.string   "name"
    t.integer  "days"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.boolean  "is_admin"
    t.boolean  "is_encoder"
    t.boolean  "is_batcher"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "remember_token"
  end

  add_index "users", ["name"], :name => "index_users_on_name", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

  create_table "vendors", :force => true do |t|
    t.string   "name"
    t.string   "addr1"
    t.string   "addr2"
    t.string   "addr3"
    t.string   "vtype"
    t.string   "cont1"
    t.string   "cont2"
    t.string   "phone1"
    t.string   "phone2"
    t.string   "faxnum"
    t.string   "email"
    t.string   "taxid"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "warehouses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
