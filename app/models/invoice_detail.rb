class InvoiceDetail < ActiveRecord::Base
  attr_accessible :barcode, :description, :discamt, :invoice_id, :is_cancelled, :product_id, :qty
end
