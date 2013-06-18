class CreateInvoicePayments < ActiveRecord::Migration
  def change
    create_table :invoice_payments do |t|
      t.integer :invoice_id
      t.string :type, :limit => 10
      t.decimal :amount
      t.date :date

      t.timestamps
    end
  end
end
