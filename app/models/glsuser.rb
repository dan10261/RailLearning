#connection between controller and database
class Glsuser < ActiveRecord::Base
  validates :username, presence: true, length: {minumum: 3,maximum: 50}
  validates :password, presence: true, length: {minimum: 8, maximum: 20}
end
