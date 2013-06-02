# == Schema Information
#
# Table name: vendors
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  addr1      :string(255)
#  addr2      :string(255)
#  addr3      :string(255)
#  vtype      :string(255)
#  cont1      :string(255)
#  cont2      :string(255)
#  phone1     :string(255)
#  phone2     :string(255)
#  faxnum     :string(255)
#  email      :string(255)
#  taxid      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Vendor do
  pending "add some examples to (or delete) #{__FILE__}"
end
