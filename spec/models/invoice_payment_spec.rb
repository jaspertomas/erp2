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

require 'spec_helper'

describe InvoicePayment do
  pending "add some examples to (or delete) #{__FILE__}"
end
