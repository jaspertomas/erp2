class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.string :pono
      t.string :invno
      t.decimal :total
      t.decimal :tax
      t.integer :vendor_id
      t.string :vendor_name
      t.integer :terms_id
      t.integer :employee_id
      t.integer :template_id
      t.date :date
      t.date :datereceived
      t.date :duedate
      t.string :vendor_invoice
      t.string :discrate
      t.decimal :discamt
      t.string :status
      t.string :type
      t.decimal :cash
      t.decimal :cheque
      t.decimal :credit
      t.string :chequeno
      t.date :chequedate
      t.decimal :balance
      t.string :chequedata

      t.timestamps
    end
  end
end
