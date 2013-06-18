# == Schema Information
#
# Table name: invoice_details
#
#  id           :integer          not null, primary key
#  barcode      :string(255)
#  invoice_id   :integer
#  product_id   :integer
#  description  :string(255)
#  discrate     :decimal(, )
#  discamt      :decimal(, )
#  is_cancelled :boolean
#  qty          :decimal(, )
#  price        :decimal(, )
#  unittotal    :decimal(, )
#  total        :decimal(, )
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'spec_helper'

describe InvoiceDetail do
  pending "add some examples to (or delete) #{__FILE__}"
end
