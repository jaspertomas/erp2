# == Schema Information
#
# Table name: purchase_details
#
#  id           :integer          not null, primary key
#  purchase_id  :integer
#  description  :string(255)
#  qty          :decimal(, )
#  price        :decimal(, )
#  total        :decimal(, )
#  tax          :decimal(, )
#  product_id   :integer
#  barcode      :string(255)
#  discrate     :string(255)
#  discamt      :decimal(, )
#  is_cancelled :boolean
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'spec_helper'

describe PurchaseDetail do
  pending "add some examples to (or delete) #{__FILE__}"
end
