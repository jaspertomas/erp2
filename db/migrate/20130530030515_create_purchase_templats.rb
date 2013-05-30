class CreatePurchaseTemplats < ActiveRecord::Migration
  def change
    create_table :purchase_templats do |t|
      t.string :Rails
      t.string :g
      t.string :scaffold
      t.string :Ps
      t.string :g
      t.string :scaffold
      t.string :Quotes
      t.date :date
      t.integer :vendor_id
      t.integer :product_id
      t.decimal :price
      t.string :discrate
      t.decimal :discamt
      t.string :ref_class
      t.integer :ref_id
      t.decimal :total
      t.boolean :mine
      t.boolean :is_cancelled

      t.timestamps
    end
  end
end
