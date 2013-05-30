class Vendor < ActiveRecord::Base
  attr_accessible :addr1, :addr2, :addr3, :cont1, :cont2, :email, :faxnum, :name, :phone1, :phone2, :taxid, :vtype
end
