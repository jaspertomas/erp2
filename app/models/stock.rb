# == Schema Information
#
# Table name: stocks
#
#  id           :integer          not null, primary key
#  warehouse_id :integer
#  product_id   :integer
#  currentqty   :decimal(, )
#  date         :date
#  quota        :decimal(, )
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Stock < ActiveRecord::Base
  attr_accessible :currentqty, :date, :product_id, :quota, :warehouse_id
end
