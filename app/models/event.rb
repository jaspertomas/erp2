class Event < ActiveRecord::Base
  attr_accessible :Events, :Rails, :amount, :checkcleardate, :child_class, :children_id, :d, :date, :g, :is_cancelled, :parent_class, :parent_id, :parent_name, :ping, :scaffold, :type, :type
end
