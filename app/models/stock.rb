class Stock < ActiveRecord::Base
  attr_accessible :currentqty, :date, :product_id, :quota, :warehouse_id
end
