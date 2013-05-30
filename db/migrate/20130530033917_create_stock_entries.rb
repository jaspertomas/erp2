class CreateStockEntries < ActiveRecord::Migration
  def change
    create_table :stock_entries do |t|
      t.date :date
      t.decimal :qty
      t.decimal :balance
      t.integer :stock_id
      t.string :ref_class
      t.integer :ref_id
      t.boolean :is_cancelled
      t.integer :priority
      t.string :type
      t.string :description

      t.timestamps
    end
  end
end
