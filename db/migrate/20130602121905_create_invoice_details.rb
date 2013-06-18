class CreateInvoiceDetails < ActiveRecord::Migration
  def change
    create_table :invoice_details do |t|
      t.string :barcode, :limit => 30
      t.integer :invoice_id
      t.integer :product_id
      t.string :description
      t.decimal :discrate
      t.decimal :discamt
      t.boolean :is_cancelled
      t.decimal :qty
      t.decimal :price
      t.decimal :unittotal
      t.decimal :total

      t.timestamps
    end
  end
end
