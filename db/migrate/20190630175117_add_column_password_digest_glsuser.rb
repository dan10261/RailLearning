class AddColumnPasswordDigestGlsuser < ActiveRecord::Migration[5.2]
  def change
  	remove_column :glsusers, :password #passowrd_digest will automatically store password information as password
  	add_column :glsusers, :password_digest , :string
  end
end
