class Product < ActiveRecord::Base
  attr_accessible :barcode, :brand_id, :category1, :category10, :category2, :category3, :category4, :category5, :category6, :category7, :category8, :category9, :is_service, :monitored, :name, :producttype_id, :publish, :qty
end
