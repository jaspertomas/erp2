class Event < ActiveRecord::Base
  attr_accessible :amount, :checkcleardate, :child_class, :children_id, :date, :detail1, :detail2, :detail3, :is_cancelled, :parent_class, :parent_id, :parent_name, :type
end
