class CreatePurchaseDetails < ActiveRecord::Migration
  def change
    create_table :purchase_details do |t|
      t.integer :purchase_id
      t.string :description
      t.decimal :qty
      t.decimal :price
      t.decimal :total
      t.decimal :tax
      t.integer :product_id
      t.string :barcode
      t.string :discrate
      t.decimal :discamt
      t.boolean :is_cancelled

      t.timestamps
    end
  end
end
