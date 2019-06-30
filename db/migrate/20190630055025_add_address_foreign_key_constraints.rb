class AddAddressForeignKeyConstraints < ActiveRecord::Migration[5.2]
  def change
  	 remove_foreign_key :glsuser_id, :addresses, on_delete: :cascade
  	 add_foreign_key :glsuser_id, :addresses 
  end
end
