# == Schema Information
#
# Table name: stock_entries
#
#  id           :integer          not null, primary key
#  date         :date
#  qty          :decimal(, )
#  balance      :decimal(, )
#  stock_id     :integer
#  ref_class    :string(255)
#  ref_id       :integer
#  is_cancelled :boolean
#  priority     :integer
#  type         :string(255)
#  description  :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'spec_helper'

describe StockEntry do
  pending "add some examples to (or delete) #{__FILE__}"
end
