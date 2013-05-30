class CreateInvoiceDetails < ActiveRecord::Migration
  def change
    create_table :invoice_details do |t|
      t.string :invoice_id
      t.string :Rails
      t.string :g
      t.string :scaffold
      t.string :InvoiceDetails
      t.string :invoice
      t.string :description
      t.decimal :qty
      t.decimal :discamt
      t.boolean :is_cancelled

      t.timestamps
    end
  end
end
