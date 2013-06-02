class InvoiceDetail < ActiveRecord::Base
  attr_accessible :barcode, :description, :discamt, :discrate, :invoice_id, :is_cancelled, :price, :product_id, :qty, :total, :unittotal
  belongs_to :invoice
  belongs_to :product

end
