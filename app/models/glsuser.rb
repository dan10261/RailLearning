#connection between controller and database
class Glsuser < ActiveRecord::Base
  validates :username, presence: true
  validates :password, presence: true
end
