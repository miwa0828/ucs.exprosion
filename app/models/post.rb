class Post < ApplicationRecord
  attachment :image
  belongs_to :owner
  validates :image, presence: true
  validates :title, presence: true
  validates :detail, presence: true
  validates :image, presence: true
end
