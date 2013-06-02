# == Schema Information
#
# Table name: product_categories
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  producttype_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class ProductCategory < ActiveRecord::Base
  attr_accessible :name, :producttype_id
end
