class Item < ApplicationRecord
  has_one_attached :image
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :type
  belongs_to_active_hash :status_id
  belongs_to_active_hash :delivaly_price
  belongs_to_active_hash :ship

  
end
