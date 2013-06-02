# == Schema Information
#
# Table name: customers
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  tin_no     :string(255)
#  address    :string(255)
#  phone1     :string(255)
#  phone2     :string(255)
#  faxnum     :string(255)
#  email      :string(255)
#  note       :string(255)
#  rep        :string(255)
#  repno      :string(255)
#  rep2       :string(255)
#  rep2no     :string(255)
#  taxitem    :string(255)
#  notepad    :string(255)
#  salutation :string(255)
#  is_suki    :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Customer < ActiveRecord::Base
  attr_accessible :address, :email, :faxnum, :is_suki, :name, :note, :notepad, :phone1, :phone2, :rep, :rep2, :rep2no, :repno, :salutation, :taxitem, :tin_no
  has_many :invoices
end
