class Remove < ActiveRecord::Migration[5.2]
  def change
  	remove_foreign_key :addresses, :glsuser_id
  end
end
