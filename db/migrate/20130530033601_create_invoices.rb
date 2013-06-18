class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.integer :customer_id
      t.string :customer_name, :limit => 100
      t.string :invno, :limit => 20
      t.string :ponumber, :limit => 20
      t.decimal :payonly
      t.decimal :total
      t.string :cheque
      t.date :chequedate
      t.date :date
      t.date :duedate
      t.date :datepaid
      t.integer :terms_id
      t.integer :salesman_id
      t.integer :technician_id
      t.integer :template_id
      t.decimal :cash
      t.decimal :chequeamt
      t.decimal :credit
      t.string :discrate
      t.decimal :discamt
      t.string :saletype
      t.decimal :dsrdeduction
      t.decimal :balance
      t.string :chequedata
      t.date :checkcleardate
      t.boolean :checkcollectevents
      t.text :notes
      t.string :status
      t.boolean :hidden

      t.timestamps
    end
  end
end
