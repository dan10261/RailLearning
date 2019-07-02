class Article < ApplicationRecord
  belongs_to :glsuser
  validates :title, presence: true
end
#command
#rails console

