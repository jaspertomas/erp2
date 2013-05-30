class CreateAccountEntries < ActiveRecord::Migration
  def change
    create_table :account_entries do |t|
      t.integer :account_id
      t.decimal :qty
      t.date :date
      t.decimal :balance
      t.string :ref_class
      t.integer :ref_id
      t.integer :priority
      t.string :type
      t.string :description
      t.timestamp :created_at

      t.timestamps
    end
  end
end
