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

class Account < ActiveRecord::Base
  attr_accessible :account_category_id, :account_type_id, :code, :currentqty, :date, :is_special, :name
end
