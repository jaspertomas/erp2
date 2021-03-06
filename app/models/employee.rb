# == Schema Information
#
# Table name: employees
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  commission    :integer
#  is_technician :boolean
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Employee < ActiveRecord::Base
  attr_accessible :commission, :is_technician, :name
  has_many :invoices_as_salesman, :class_name => "Invoice", :foreign_key => 'salesman_id'
  has_many :invoices_as_technician, :class_name => "Invoice", :foreign_key => 'technician_id'
end
