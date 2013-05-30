class PurchaseDetail < ActiveRecord::Base
  attr_accessible :barcode, :description, :discamt, :discrate, :is_cancelled, :price, :product_id, :purchase_id, :qty, :tax, :total
end
