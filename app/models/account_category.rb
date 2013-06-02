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

class AccountCategory < ActiveRecord::Base
  attr_accessible :account_type_id, :code, :name, :parent_code
end
