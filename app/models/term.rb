# == Schema Information
#
# Table name: terms
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  days       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Term < ActiveRecord::Base
  attr_accessible :days, :name
  has_many :invoices, :class_name => "Invoice", :foreign_key => 'terms_id'
end
