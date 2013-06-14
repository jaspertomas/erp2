class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :tin_no
      t.string :address
      t.string :phone1
      t.string :phone2
      t.string :faxnum
      t.string :email
      t.string :note
      t.string :rep
      t.string :repno
      t.string :rep2
      t.string :rep2no
      t.string :taxitem
      t.string :notepad
      t.string :salutation
      t.boolean :is_suki

      t.timestamps
    end
    Customer.create!(name: '(Anonymous)')
  end
end
