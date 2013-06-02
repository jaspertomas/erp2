class InvoiceDetail < ActiveRecord::Base
  attr_accessible :barcode, :description, :discamt, :discrate, :invoice_id, :is_cancelled, :price, :product_id, :qty, :total, :unittotal
  belongs_to :invoice, :class_name => "Invoice", :foreign_key => 'invoice_id'
  belongs_to :product
  validates :qty, :presence => true
  validates :price, :presence => true
  validates :invoice_id, :presence => true
  validates :product_id, :presence => true
end
