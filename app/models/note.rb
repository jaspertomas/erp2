class Note < ActiveRecord::Base
  attr_accessible :description, :name, :parent_id, :priority
end
