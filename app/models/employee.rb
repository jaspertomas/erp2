class Employee < ActiveRecord::Base
  attr_accessible :commission, :is_technician, :name
end
