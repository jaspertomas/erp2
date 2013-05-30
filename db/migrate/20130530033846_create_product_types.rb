class CreateProductTypes < ActiveRecord::Migration
  def change
    create_table :product_types do |t|
      t.string :name
      t.string :description
      t.integer :parent_id
      t.integer :priority
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
      t.string :path_ids
      t.string :path

      t.timestamps
    end
  end
end
