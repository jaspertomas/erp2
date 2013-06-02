# == Schema Information
#
# Table name: notes
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  parent_id   :integer
#  priority    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'spec_helper'

describe Note do
  pending "add some examples to (or delete) #{__FILE__}"
end
