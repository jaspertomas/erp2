# == Schema Information
#
# Table name: purchases
#
#  id             :integer          not null, primary key
#  pono           :string(255)
#  invno          :string(255)
#  total          :decimal(, )
#  tax            :decimal(, )
#  vendor_id      :integer
#  vendor_name    :string(255)
#  terms_id       :integer
#  employee_id    :integer
#  template_id    :integer
#  date           :date
#  datereceived   :date
#  duedate        :date
#  vendor_invoice :string(255)
#  discrate       :string(255)
#  discamt        :decimal(, )
#  status         :string(255)
#  type           :string(255)
#  cash           :decimal(, )
#  cheque         :decimal(, )
#  credit         :decimal(, )
#  chequeno       :string(255)
#  chequedate     :date
#  balance        :decimal(, )
#  chequedata     :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Purchase < ActiveRecord::Base
  attr_accessible :balance, :cash, :cheque, :chequedata, :chequedate, :chequeno, :credit, :date, :datereceived, :discamt, :discrate, :duedate, :employee_id, :invno, :pono, :status, :tax, :template_id, :terms_id, :total, :type, :vendor_id, :vendor_invoice, :vendor_name
  validates_date :chequedate
  validates_date :date
  validates_date :duedate
  validates_date :datereceived
  has_many :payments, :class_name => "PurchasePayment", :foreign_key => 'purchase_id'
  
end
