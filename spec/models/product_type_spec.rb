# == Schema Information
#
# Table name: product_types
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  parent_id   :integer
#  priority    :integer
#  category1   :string(255)
#  category2   :string(255)
#  category3   :string(255)
#  category4   :string(255)
#  category5   :string(255)
#  category6   :string(255)
#  category7   :string(255)
#  category8   :string(255)
#  category9   :string(255)
#  category10  :string(255)
#  path_ids    :string(255)
#  path        :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'spec_helper'

describe ProductType do
  pending "add some examples to (or delete) #{__FILE__}"
end
