class Invoice < ActiveRecord::Base
  attr_accessible :balance, :cash, :checkcleardate, :checkcollectevents, :cheque, :chequeamt, :chequedata, :chequedate, :credit, :customer_id, :customer_name, :date, :datepaid, :discamt, :discrate, :dsrdeduction, :duedate, :invno, :payonly, :ponumber, :salesman_id, :saletype, :technician_id, :template_id, :terms_id, :total
  validates_date :chequedate
  validates_date :date
  validates_date :duedate
  validates_date :datepaid
  
end
