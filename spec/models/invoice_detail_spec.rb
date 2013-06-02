# == Schema Information
#
# Table name: invoice_details
#
#  id           :integer          not null, primary key
#  invoice_id   :integer
#  product_id   :integer
#  barcode      :string(255)
#  description  :string(255)
#  qty          :decimal(, )
#  discamt      :decimal(, )
#  is_cancelled :boolean
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'spec_helper'

describe InvoiceDetail do
  pending "add some examples to (or delete) #{__FILE__}"
end
