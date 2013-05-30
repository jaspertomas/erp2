class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :name
      t.string :description
      t.integer :parent_id
      t.integer :priority

      t.timestamps
    end
  end
end
