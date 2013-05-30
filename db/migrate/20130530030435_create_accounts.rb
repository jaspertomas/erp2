class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :code
      t.string :name
      t.integer :account_type_id
      t.integer :account_category_id
      t.boolean :is_special
      t.decimal :currentqty
      t.date :date

      t.timestamps
    end
  end
end
