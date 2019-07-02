#Commands:
# rails generate migration create_articles
# rake db:migrate
#rake db:rollback
class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :description
      t.timestamps
    end
  end
end
