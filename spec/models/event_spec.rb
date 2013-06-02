# == Schema Information
#
# Table name: events
#
#  id             :integer          not null, primary key
#  type           :string(255)
#  parent_class   :string(255)
#  parent_id      :integer
#  parent_name    :string(255)
#  child_class    :string(255)
#  children_id    :string(255)
#  date           :date
#  amount         :decimal(, )
#  detail1        :string(255)
#  detail2        :string(255)
#  detail3        :string(255)
#  is_cancelled   :boolean
#  checkcleardate :date
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'spec_helper'

describe Event do
  pending "add some examples to (or delete) #{__FILE__}"
end
