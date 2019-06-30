class CreateNotesAgain < ActiveRecord::Migration[5.2]
  def change
     create_table :notes do |t|
      t.text :subject
      t.text :content
      t.references :glsuser, foreign_key: true
      t.references :category, foreign_key: true
      t.timestamps
    end
  end
end
