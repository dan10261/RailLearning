class Address < ActiveRecord::Migration[5.2]
  def change
  	create_table :addresses do |t|
  		t.text :street1
  		t.text :street2
  		t.string :zip5
  		t.string :zip4
  		t.string :city
  		t.string :state
  		t.string :country
  		t.string :province
  		t.string :is_foreign_country
  		t.integer :user_id
  	end
  end
end
