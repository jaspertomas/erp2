class CreateProductCategories < ActiveRecord::Migration
  def change
    create_table :product_categories do |t|
      t.string :name
      t.string :pro
      t.string :Rails
      t.string :g
      t.string :scaffold
      t.string :Produils
      t.string :g
      t.string :scaffold
      t.string :ProductTypes
      t.string :name
      t.string :description
      t.integer :parent_id
      t.string :pri
      t.string :Rails
      t.string :g
      t.string :scaffold
      t.string :Pro
      t.stri :category2
      t.string :Rails
      t.string :g
      t.string :scaffold
      t.string :category4
      t.string :ca
      t.string :Rails
      t.string :g
      t.string :scaffold
      t.string :ory6
      t.string :category7
      t.string :category8
      t.string :category9
      t.string :Rails
      t.string :g
      t.string :scaffoldpath_ids
      t.string :path

      t.timestamps
    end
  end
end
