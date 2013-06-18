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

class InvoiceDetail < ActiveRecord::Base
  attr_accessible :barcode, :description, :discamt, :discrate, :invoice_id, :is_cancelled, :price, :product_id, :qty, :total, :unittotal
  belongs_to :invoice, :class_name => "Invoice", :foreign_key => 'invoice_id'
  belongs_to :product
  validates :qty, :presence => true
  validates :price, :presence => true
  validates :invoice_id, :presence => true
  validates :product_id, :presence => true
end
