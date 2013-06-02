# == Schema Information
#
# Table name: account_categories
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  code            :string(255)
#  account_type_id :integer
#  parent_code     :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'spec_helper'

describe AccountCategory do
  pending "add some examples to (or delete) #{__FILE__}"
end
