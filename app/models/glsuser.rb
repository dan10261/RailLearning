#connection between controller and database
class Glsuser < ApplicationRecord
 	has_many :notes
 	has_many :addresses
 	before_save { self.email = email.downcase }
 	VALID_EMAIL_REGEX= /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
 	validates :username, presence: true, length: {minumum: 3,maximum: 50}, uniqueness: {case_sensitive: false}
  	validates :password, presence: true, length: {minimum: 8, maximum: 20}
  	validates :email, uniqueness: true, length: {maximum: 100}, format: { with: VALID_EMAIL_REGEX }
end
