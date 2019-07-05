class Article < ApplicationRecord
  belongs_to :glsuser
  has_many :article_categories_associations
  has_many :categories, through: :article_categories_associations
  validates :title, presence: true
end
#command
#rails console

