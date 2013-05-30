class CreateStockEntries < ActiveRecord::Migration
  def change
    create_table :stock_entries do |t|
      t.date :date
      t.decimal :qty
      t.decimal :balance
      t.integer :stock_id
      t.string :ref_class
      t.integer :ref_id
      t.boole :is_cancelled
      t.string :Rails
      t.string :g
      t.string :scaffold
      t.string :StockEntry
      t.date :date
      t.string :qn

      t.timestamps
    end
  end
end
