class CreateSubsidiaries < ActiveRecord::Migration
  def change
    create_table :subsidiaries do |t|
      t.string :code
      t.string :name
      t.string :account_code
      t.integer :fund_id

      t.timestamps
    end
  end
end
