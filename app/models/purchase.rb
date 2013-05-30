class Purchase < ActiveRecord::Base
  attr_accessible :balance, :cash, :cheque, :chequedata, :chequedate, :chequeno, :credit, :date, :datereceived, :discamt, :discrate, :duedate, :employee_id, :invno, :pono, :status, :tax, :template_id, :terms_id, :total, :type, :vendor_id, :vendor_invoice, :vendor_name
  validates_date :chequedate
  validates_date :date
  validates_date :duedate
  validates_date :datereceived
  
end
