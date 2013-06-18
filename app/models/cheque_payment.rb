class ChequePayment < ActiveRecord::Base
  attr_accessible :amount, :chequedate, :cleardate, :payment_id, :status, :type
end
