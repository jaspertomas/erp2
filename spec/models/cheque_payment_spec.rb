# == Schema Information
#
# Table name: cheque_payments
#
#  id         :integer          not null, primary key
#  payment_id :integer
#  type       :string(10)
#  amount     :decimal(, )
#  chequedate :date
#  status     :string(20)
#  cleardate  :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe ChequePayment do
  pending "add some examples to (or delete) #{__FILE__}"
end
