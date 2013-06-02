# == Schema Information
#
# Table name: pricelists
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  date       :date
#  vendor_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Pricelist < ActiveRecord::Base
  attr_accessible :date, :name, :vendor_id
end
