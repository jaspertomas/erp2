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

class Note < ActiveRecord::Base
  attr_accessible :description, :name, :parent_id, :priority
end
