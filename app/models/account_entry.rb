# == Schema Information
#
# Table name: account_entries
#
#  id          :integer          not null, primary key
#  account_id  :integer
#  qty         :decimal(, )
#  date        :date
#  balance     :decimal(, )
#  ref_class   :string(255)
#  ref_id      :integer
#  priority    :integer
#  type        :string(255)
#  description :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class AccountEntry < ActiveRecord::Base
  attr_accessible :account_id, :balance, :created_at, :date, :description, :priority, :qty, :ref_class, :ref_id, :type
end
