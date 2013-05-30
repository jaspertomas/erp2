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
      t.string :taxid

      t.timestamps
    end
  end
end
