class Shop < ApplicationRecord
  attachment :image
  belongs_to :owner

  #地図機能
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  #検索機能
  def self.search(keyword)
    where(["name like? OR address like?", "%#{keyword}%", "%#{keyword}%"])
  end

  #バリデーション
  validates :name, presence: true
  validates :detail, presence: true
  validates :address, presence: true
  validates :open_time, presence: true
  validates :close_time, presence: true
  validates :phone_number, presence: true
  validates :image, presence: true
  validates :url, presence: true
end
