class Address < ApplicationRecord 
	belongs_to :glsuser
	validates :glsuser_id, presence: true
end