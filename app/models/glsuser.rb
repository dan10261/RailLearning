#connection between controller and database
class Glsuser < ApplicationRecord
 	has_many :notes
 	validates :username, presence: true, length: {minumum: 3,maximum: 50}
  	validates :password, presence: true, length: {minimum: 8, maximum: 20}
end
