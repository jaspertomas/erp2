class InvoicePayment < ActiveRecord::Base
  attr_accessible :amount, :date, :invoice_id, :type
  belongs_to :invoice
end
