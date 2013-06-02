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

require 'spec_helper'

describe ProductCategory do
  pending "add some examples to (or delete) #{__FILE__}"
end
