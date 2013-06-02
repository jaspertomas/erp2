# == Schema Information
#
# Table name: quotes
#
#  id           :integer          not null, primary key
#  date         :date
#  vendor_id    :integer
#  product_id   :integer
#  price        :decimal(, )
#  discrate     :string(255)
#  discamt      :decimal(, )
#  ref_class    :string(255)
#  ref_id       :integer
#  total        :decimal(, )
#  mine         :boolean
#  is_cancelled :boolean
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'spec_helper'

describe Quote do
  pending "add some examples to (or delete) #{__FILE__}"
end
