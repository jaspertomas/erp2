# == Schema Information
#
# Table name: products
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  brand_id       :integer
#  producttype_id :integer
#  qty            :decimal(, )
#  category1      :string(255)
#  category2      :string(255)
#  category3      :string(255)
#  category4      :string(255)
#  category5      :string(255)
#  category6      :string(255)
#  category7      :string(255)
#  category8      :string(255)
#  category9      :string(255)
#  category10     :string(255)
#  publish        :boolean
#  monitored      :boolean
#  barcode        :string(255)
#  is_service     :boolean
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Product < ActiveRecord::Base
  attr_accessible :barcode, :brand_id, :category1, :category10, :category2, :category3, :category4, :category5, :category6, :category7, :category8, :category9, :is_service, :monitored, :name, :producttype_id, :publish, :qty
  belongs_to :producttype, :class_name => "ProductType", :foreign_key => 'producttype_id'
end
