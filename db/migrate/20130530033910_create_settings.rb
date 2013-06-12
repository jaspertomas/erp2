class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string :name
      t.string :value

      t.timestamps
    end
    Setting.create!(:name => 'default_salesman_id', :value => '2')  
  end
end
