class CreateGlsuserAgain < ActiveRecord::Migration[5.2]
  def change
    drop_table :glsusers;
    create_table :glsusers do |t|
      t.string :firstname
      t.string :lastname
      t.string :username
      t.string :password
      t.string :email
      t.timestamps
      t.boolean :admin
    end
  end
end
