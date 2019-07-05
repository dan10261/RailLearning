class Category < ApplicationRecord
	  has_many :notes, dependent: :nullify #when the category is deleted, the associated table column is set to null
	  has_many :article_categories_associations
    has_many :articles, through: :article_categories_associations
	  validates :name, presence: true, length: {minimum: 3, maximum: 20}
	  #validates_uniqueness_of :name
end
