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

class ChequePayment < ActiveRecord::Base
  attr_accessible :amount, :chequedate, :cleardate, :payment_id, :status, :type
end
