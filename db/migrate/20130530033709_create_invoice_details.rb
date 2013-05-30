class CreateInvoiceDetails < ActiveRecord::Migration
  def change
    create_table :invoice_details do |t|
      t.integer :invoice_id
      t.integer :product_id
      t.string :barcode
      t.string :description
      t.decimal :qty
      t.decimal :discamt
      t.boolean :is_cancelled

      t.timestamps
    end
  end
end
