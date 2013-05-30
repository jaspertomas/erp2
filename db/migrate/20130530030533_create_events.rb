class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :type
      t.string :parent_class
      t.integer :parent_id
      t.string :parent_name
      t.string :child_class
      t.string :children_id
      t.date :date
      t.decimal :amount
      t.string :d
      t.string :Rails
      t.string :g
      t.string :scaffold
      t.string :Events
      t.string :type
      t.string :ping
      t.boolean :is_cancelled
      t.date :checkcleardate

      t.timestamps
    end
  end
end
