class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.boolean :is_admin
      t.boolean :is_encoder
      t.boolean :is_batcher

      t.timestamps
    end
    add_column :users, :remember_token, :string
    add_index :users, :remember_token
    add_index :users, :name, unique: true 
    #User.create!(:name => 'admin', :email => 'admin', :password_digest => "$2a$10$rXPZfyuyAgLe9Wcxy6h/MelNg1X0TdjZB4icXh344qXYRai39Rxbu", :is_admin => true, :is_encoder => true, :is_batcher => true ) 
    User.create!(:name => 'admin', :email => 'admin', :password => "admin", :password_confirmation => "admin", :is_admin => true, :is_encoder => true, :is_batcher => true ) 
  end
end
