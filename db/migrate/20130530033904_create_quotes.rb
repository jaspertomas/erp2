class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
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
