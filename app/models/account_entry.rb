class AccountEntry < ActiveRecord::Base
  attr_accessible :account_id, :balance, :created_at, :date, :description, :priority, :qty, :ref_class, :ref_id, :type
end
