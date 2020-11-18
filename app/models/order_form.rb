class OrderAddress

  include ActiveModel::ActiveModel
  attr_accessor :user_id, :item_id, :postel, :prefecture, :city, :house_number, :building_name, :tel, :order_id

  with_option presence: true do
    validates :postal, format: {with: /\A[0-9]{3}-[0-9]{4}\z/, message: "is invalid. Include hyphen(-)"}
    validates :city, format: {with:/\A[ぁ-んァ-ン一-龥]/}
    validates :tel, format: {with:/\A(((0(\d{1}[-(]?\d{4}|\d{2}[-(]?\d{3}|\d{3}[-(]?\d{2}|\d{4}[-(]?\d{1}|[5789]0[-(]?\d{4})[-)]?)|\d{1,4}\-?)\d{4}|0120[-(]?\d{3}[-)]?\d{3})\z/}
  end
  validates :prefecture, numericality: { other_than: 0, message: "can't be blank" }

  def save
    order = Order.create(user_id: user.id, item_id: item.id)
    Address.create(postel: postel, prefecture: prefecture, city: city, house_number: house_number, building_name: building_name, tel: tel, order_id: order.id)
  end
end