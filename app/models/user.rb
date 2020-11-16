class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :items

  validates :nickname, presence: true
  validates :password, presence: true, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i, message: 'Include both letters and numbers' }
  validates :birthday, presence: true
  NAME_REGEX = /\A[ぁ-んァ-ン一-龥]+\z/.freeze
  validates :family_name, presence: true, format: { with: NAME_REGEX, message: '全角文字を使用してください' }
  validates :first_name, presence: true, format: { with: NAME_REGEX, message: '全角文字を使用してください' }
  NAME_KANA_REGEX = /\A[ァ-ヶー－]+\z/.freeze
  validates :family_name_kana, presence: true, format: { with: NAME_KANA_REGEX, message: 'カタカナを使用してください' }
  validates :first_name_kana, presence: true, format: { with: NAME_KANA_REGEX, message: 'カタカナを使用してください' }
end
