class Shop < ApplicationRecord
  attachment :image
  belongs_to :owner
end
