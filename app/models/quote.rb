class Quote < ActiveRecord::Base
  attr_accessible :date, :discamt, :discrate, :is_cancelled, :mine, :price, :product_id, :ref_class, :ref_id, :total, :vendor_id
end
