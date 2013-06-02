# == Schema Information
#
# Table name: invoices
#
#  id                 :integer          not null, primary key
#  customer_id        :integer
#  customer_name      :string(255)
#  invno              :string(255)
#  ponumber           :string(255)
#  payonly            :decimal(, )
#  total              :decimal(, )
#  cheque             :string(255)
#  chequedate         :date
#  date               :date
#  duedate            :date
#  datepaid           :date
#  terms_id           :integer
#  salesman_id        :integer
#  technician_id      :integer
#  template_id        :integer
#  cash               :decimal(, )
#  chequeamt          :decimal(, )
#  credit             :decimal(, )
#  discrate           :string(255)
#  discamt            :decimal(, )
#  saletype           :string(255)
#  dsrdeduction       :decimal(, )
#  balance            :decimal(, )
#  chequedata         :string(255)
#  checkcleardate     :date
#  checkcollectevents :boolean
#  notes              :text
#  status             :string(255)
#  hidden             :boolean
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

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
  belongs_to :template, :class_name => "InvoiceTemplate", :foreign_key => 'template_id'
  belongs_to :terms, :class_name => "Term", :foreign_key => 'terms_id'
  has_many :details, :class_name => "InvoiceDetail", :foreign_key => 'invoice_id'
  
  
  
end
