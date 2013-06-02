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

class InvoiceDetail < ActiveRecord::Base
  attr_accessible :barcode, :description, :discamt, :invoice_id, :is_cancelled, :product_id, :qty
end
