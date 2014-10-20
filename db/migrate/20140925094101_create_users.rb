class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :firstname
    	t.string :lastname
    	t.string :username
    	t.string :password
    	t.string :email
    	t.string :phone
    	t.string :birthday
    	t.string :homePhone
    	t.string :address
    	t.string :city
    	t.boolean :sex
    	t.boolean :isActive
    	t.boolean :isReceiveEmail
      	t.timestamps
    end
  end
end
