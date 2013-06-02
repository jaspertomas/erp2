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

require 'spec_helper'

describe AccountEntry do
  pending "add some examples to (or delete) #{__FILE__}"
end
