class Invoice < ActiveRecord::Base
  attr_accessible :balance, :cash, :checkcleardate, :checkcollectevents, :cheque, :chequeamt, :chequedata, :chequedate, :credit, :customer_id, :customer_name, :date, :datepaid, :discamt, :discrate, :dsrdeduction, :duedate, :invno, :payonly, :ponumber, :salesman_id, :saletype, :technician_id, :template_id, :terms_id, :total, :hidden, :notes, :status
#  validates_date :chequedate
  validates_date :date
#  validates_date :duedate
#  validates_date :datepaid
  validates :invno, :presence => true
  
  belongs_to :customer, :class_name => "Customer", :foreign_key => 'customer_id'
  belongs_to :salesman, :class_name => "Employee", :foreign_key => 'salesman_id'
  belongs_to :technician, :class_name => "Employee", :foreign_key => 'technician_id'
  has_many :details, :class_name => "InvoiceDetail", :foreign_key => 'invoice_id'
  
  
  
end
