class Category < ApplicationRecord
	  has_many :notes, dependent: :nullify
end
