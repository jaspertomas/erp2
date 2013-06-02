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

require 'spec_helper'

describe Invoice do
  pending "add some examples to (or delete) #{__FILE__}"
end
