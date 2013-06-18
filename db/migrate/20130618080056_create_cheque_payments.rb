class CreateChequePayments < ActiveRecord::Migration
  def change
    create_table :cheque_payments do |t|
      t.integer :payment_id
      t.string :type, :limit => 10
      t.decimal :amount
      t.date :chequedate
      t.string :status, :limit => 20
      t.date :cleardate

      t.timestamps
    end
  end
end
