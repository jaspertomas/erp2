class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :addr1
      t.string :addr2
      t.string :addr3
      t.string :vtype
      t.string :cont1
      t.string :cont2
      t.string :phone1
      t.string :phone2
      t.string :faxnum
      t.string :email
      t.string :ta
      t.string :Rails
      t.string :g
      t.string :scaffold
      t.string :Vendors
      t.stringes :name
      t.string :name

      t.timestamps
    end
  end
end
