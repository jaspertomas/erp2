# == Schema Information
#
# Table name: invoice_payments
#
#  id         :integer          not null, primary key
#  invoice_id :integer
#  type       :string(10)
#  amount     :decimal(, )
#  date       :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class InvoicePayment < ActiveRecord::Base
  attr_accessible :amount, :date, :invoice_id, :type
  belongs_to :invoice
end
