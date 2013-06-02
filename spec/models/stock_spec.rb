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

require 'spec_helper'

describe Stock do
  pending "add some examples to (or delete) #{__FILE__}"
end
