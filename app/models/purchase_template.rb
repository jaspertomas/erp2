# == Schema Information
#
# Table name: purchase_templates
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PurchaseTemplate < ActiveRecord::Base
  attr_accessible :name
end
