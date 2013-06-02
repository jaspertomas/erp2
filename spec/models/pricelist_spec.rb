# == Schema Information
#
# Table name: pricelists
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  date       :date
#  vendor_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Pricelist do
  pending "add some examples to (or delete) #{__FILE__}"
end
