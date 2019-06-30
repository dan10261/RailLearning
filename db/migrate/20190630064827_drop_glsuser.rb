class DropGlsuser < ActiveRecord::Migration[5.2]
  def change
  	drop_table :notes
  	drop_table :addresses
  	drop_table :glsusers
  end
end
