class Note < ApplicationRecord
  belongs_to :glsuser
  belongs_to :category
end
