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

require 'spec_helper'

describe PurchasePayment do
  pending "add some examples to (or delete) #{__FILE__}"
end
