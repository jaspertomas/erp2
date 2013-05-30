class Customer < ActiveRecord::Base
  attr_accessible :address, :email, :faxnum, :is_suki, :name, :note, :notepad, :phone1, :phone2, :rep, :rep2, :rep2no, :repno, :salutation, :taxitem, :tin_no
end
