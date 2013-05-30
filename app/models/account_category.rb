class AccountCategory < ActiveRecord::Base
  attr_accessible :account_type_id, :code, :name, :parent_code
end
