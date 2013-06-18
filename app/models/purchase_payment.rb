# == Schema Information
#
# Table name: purchase_payments
#
#  id          :integer          not null, primary key
#  purchase_id :integer
#  type        :string(10)
#  amount      :decimal(, )
#  date        :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class PurchasePayment < ActiveRecord::Base
  attr_accessible :amount, :date, :purchase_id, :type
  belongs_to :purchase
end
