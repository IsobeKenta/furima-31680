class Order < ApplicationRecord
  belongs_to :user
  berongs_to :item
  has_one :address

end
