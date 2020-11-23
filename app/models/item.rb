class Item < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  has_one :order
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :type
  belongs_to_active_hash :status_id
  belongs_to_active_hash :delivaly_price
  belongs_to_active_hash :ship
  validates :image, :product, :explanation, presence: true
  validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 300, less_than_or_equal_to: 9_999_999 }
  validates :type_id, :status_id_id, :delivaly_price_id, :prefecture_id, :ship_id, numericality: { other_than: 0 }

  def self.search(search)
    if search != ""
      Item.where('product LIKE(?)', "%#{search}%")
    else
      Item.all
    end
  end
end
