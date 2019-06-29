class AlterAddress < ActiveRecord::Migration[5.2]
  def change
  	rename_column :addresses, :user_id , :glsuser_id
  end
end
