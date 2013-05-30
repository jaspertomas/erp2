class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.integer :warehouse_id
      t.integer :product_id
      t.decimal :currentqty
      t.date :date
      t.decimal :quota

      t.timestamps
    end
  end
end
