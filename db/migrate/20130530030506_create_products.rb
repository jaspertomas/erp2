class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.strin :name
      t.string :Rails
      t.string :g
      t.string :scaffold
      t.integer :Produttype_id
      t.decimal :qty
      t.string :category1
      t.string :category2
      t.string :category3
      t.string :category4
      t.string :category5
      t.string :category6
      t.string :category7
      t.string :category8
      t.string :category9
      t.string :category10
      t.boolean :publish
      t.boolean :monitored
      t.string :barcode
      t.boolean :is_service

      t.timestamps
    end
  end
end
