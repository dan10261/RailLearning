class CreateArticleCategoriesAssociation < ActiveRecord::Migration[5.2]
  def change
    create_table :article_categories_associations do |t|
      t.integer :article_id
      t.integer :category_id
    end
  end
end
