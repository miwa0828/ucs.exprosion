class Post < ApplicationRecord
  attachment :image
  belongs_to :owner
end
