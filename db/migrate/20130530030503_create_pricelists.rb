class CreatePricelists < ActiveRecord::Migration
  def change
    create_table :pricelists do |t|
      t.string :name
      t.date :date
      t.integer :vendor_id

      t.timestamps
    end
  end
end
