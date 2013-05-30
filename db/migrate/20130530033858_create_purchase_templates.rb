class CreatePurchaseTemplates < ActiveRecord::Migration
  def change
    create_table :purchase_templates do |t|
      t.string :name

      t.timestamps
    end
  end
end
