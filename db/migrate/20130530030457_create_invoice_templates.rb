class CreateInvoiceTemplates < ActiveRecord::Migration
  def change
    create_table :invoice_templates do |t|
      t.string :name

      t.timestamps
    end
  end
end
