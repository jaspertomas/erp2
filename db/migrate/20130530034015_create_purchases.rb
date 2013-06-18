class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.string :pono, :limit => 20
      t.string :invno, :limit => 20
      t.decimal :total
      t.decimal :tax
      t.integer :vendor_id
      t.string :vendor_name, :limit => 100
      t.integer :terms_id
      t.integer :employee_id
      t.integer :template_id
      t.date :date
      t.date :datereceived
      t.date :duedate
      t.string :vendor_invoice, :limit => 50
      t.decimal :discrate
      t.decimal :discamt
      t.string :status, :limit => 10
      t.string :type, :limit => 10
      t.decimal :cash
      t.decimal :cheque
      t.decimal :credit
      t.string :chequeno, :limit => 30
      t.date :chequedate
      t.decimal :balance
      t.string :chequedata, :limit => 100

      t.timestamps
    end
  end
end
