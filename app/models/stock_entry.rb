class StockEntry < ActiveRecord::Base
  attr_accessible :balance, :date, :description, :is_cancelled, :priority, :qty, :ref_class, :ref_id, :stock_id, :type
end
