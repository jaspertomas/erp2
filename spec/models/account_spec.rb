# == Schema Information
#
# Table name: accounts
#
#  id                  :integer          not null, primary key
#  code                :string(255)
#  name                :string(255)
#  account_type_id     :integer
#  account_category_id :integer
#  is_special          :boolean
#  currentqty          :decimal(, )
#  date                :date
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

require 'spec_helper'

describe Account do
  pending "add some examples to (or delete) #{__FILE__}"
end
