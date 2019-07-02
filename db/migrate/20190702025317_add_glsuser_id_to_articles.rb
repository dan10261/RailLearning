class AddGlsuserIdToArticles < ActiveRecord::Migration[5.2]
  def change
    add_reference :articles, :glsuser, foreign_key: true
  end
end
