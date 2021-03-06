class CreatePurchasePayments < ActiveRecord::Migration
  def change
    create_table :purchase_payments do |t|
      t.integer :purchase_id
      t.string :type, :limit => 10
      t.decimal :amount
      t.date :date

      t.timestamps
    end
  end
end
