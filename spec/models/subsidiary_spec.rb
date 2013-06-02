# == Schema Information
#
# Table name: subsidiaries
#
#  id           :integer          not null, primary key
#  code         :string(255)
#  name         :string(255)
#  account_code :string(255)
#  fund_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'spec_helper'

describe Subsidiary do
  pending "add some examples to (or delete) #{__FILE__}"
end
