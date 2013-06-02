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

require 'spec_helper'

describe Purchase do
  pending "add some examples to (or delete) #{__FILE__}"
end
