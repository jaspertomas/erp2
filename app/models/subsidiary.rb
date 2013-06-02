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

class Subsidiary < ActiveRecord::Base
  attr_accessible :account_code, :code, :fund_id, :name
end
