class Account < ActiveRecord::Base
  attr_accessible :account_category_id, :account_type_id, :code, :currentqty, :date, :is_special, :name
end
