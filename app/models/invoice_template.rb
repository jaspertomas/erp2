# == Schema Information
#
# Table name: invoice_templates
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class InvoiceTemplate < ActiveRecord::Base
  attr_accessible :name
  
  def to_s
    name
  end
end
