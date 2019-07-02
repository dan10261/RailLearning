class Category < ApplicationRecord
	  has_many :notes, dependent: :nullify #when the category is deleted, the associated table column is set to null
	  validates :name, presence: true, length: {minimum: 3, maximum: 20}
	  #validates_uniqueness_of :name
end
