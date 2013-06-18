class PurchasePayment < ActiveRecord::Base
  attr_accessible :amount, :date, :purchase_id, :type
  belongs_to :purchase
end
