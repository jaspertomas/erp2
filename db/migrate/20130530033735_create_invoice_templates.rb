class CreateInvoiceTemplates < ActiveRecord::Migration
  def change
    create_table :invoice_templates do |t|
      t.string :name

      t.timestamps
    end
    # Create initial records
    InvoiceTemplate.create!(:name => 'TMC Invoice')
    InvoiceTemplate.create!(:name => 'TMC SO')
    InvoiceTemplate.create!(:name => 'TMC Interoffice')
    InvoiceTemplate.create!(:name => 'Lesley Invoice')
    InvoiceTemplate.create!(:name => 'Lesley SO')
  end
end
