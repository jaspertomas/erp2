# == Schema Information
#
# Table name: quotes
#
#  id           :integer          not null, primary key
#  date         :date
#  vendor_id    :integer
#  product_id   :integer
#  price        :decimal(, )
#  discrate     :string(255)
#  discamt      :decimal(, )
#  ref_class    :string(255)
#  ref_id       :integer
#  total        :decimal(, )
#  mine         :boolean
#  is_cancelled :boolean
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Quote < ActiveRecord::Base
  attr_accessible :date, :discamt, :discrate, :is_cancelled, :mine, :price, :product_id, :ref_class, :ref_id, :total, :vendor_id
end
