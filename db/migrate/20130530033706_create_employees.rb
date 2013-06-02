class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :commission
      t.boolean :is_technician

      t.timestamps
    end
    Employee.create!(:name => 'Jimmy Tomas', :commission => '0', :is_technician => '0')  
    Employee.create!(:name => 'Cora Oriel', :commission => '5', :is_technician => '0')  
    Employee.create!(:name => 'Philip Oriel', :commission => '0', :is_technician => '0')  
    Employee.create!(:name => 'Mary Ann Madarang', :commission => '0', :is_technician => '0')  
    Employee.create!(:name => 'Jasper Tomas', :commission => '0', :is_technician => '0')  
    Employee.create!(:name => 'Jason Tomas', :commission => '0', :is_technician => '0')  
    Employee.create!(:name => 'Lesley Tomas', :commission => '0', :is_technician => '0')  
    Employee.create!(:name => 'Jonathan Tomas', :commission => '0', :is_technician => '0')  
    Employee.create!(:name => 'Danny Apuhin', :commission => '50', :is_technician => '1')  
    Employee.create!(:name => 'Joebert Palcat', :commission => '0', :is_technician => '0')  
    Employee.create!(:name => 'Lily Tomas', :commission => '0', :is_technician => '0')  
    Employee.create!(:name => 'Ernesto Calahatian', :commission => '0', :is_technician => '0')  
    Employee.create!(:name => 'Rosalie Luneta', :commission => '0', :is_technician => '0')  
    Employee.create!(:name => 'Angelito Cebuala', :commission => '0', :is_technician => '0')  
    Employee.create!(:name => 'Lucio Entero', :commission => '100', :is_technician => '1')  
    Employee.create!(:name => 'Ruel Nazario Marabe', :commission => '0', :is_technician => '0')  
    Employee.create!(:name => 'Romulo Borrasca Jr.', :commission => '0', :is_technician => '0')  

  end
end
