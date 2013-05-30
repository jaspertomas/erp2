class CreateAccountCategories < ActiveRecord::Migration
  def change
    create_table :account_categories do |t|
      t.string :name
      t.string :code
      t.integer :account_type_id
      t.string :parent_code

      t.timestamps
    end
  end
end
