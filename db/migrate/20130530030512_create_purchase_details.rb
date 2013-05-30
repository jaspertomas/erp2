class CreatePurchaseDetails < ActiveRecord::Migration
  def change
    create_table :purchase_details do |t|
      t.integer :purchase_id
      t.string :description
      t.decimal :qty
      t.decimal :price
      t.de :total
      t.string :Rails
      t.string :g
      t.string :scaffold
      t.string :PurchaseDetails
      t.str :purccode
      t.string :Rails
      t.string :g
      t.string :scaffold
      t.decimal :Piscamt
      t.boolean :is_cancelled

      t.timestamps
    end
  end
end
