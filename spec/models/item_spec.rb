require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end
  describe '商品出品機能' do
    context '商品出品がうまくいくとき' do
      it '全ての項目の入力が存在すれば登録できる' do
        expect(@item).to be_valid
      end
    end
    context '商品出品がうまくいかないとき' do
      it 'imageが空だと登録できない' do
        @item.image = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Image can't be blank")
      end
      it 'productが空だと登録できない' do
        @item.product = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Product can't be blank")
      end
      it 'explanationが空だと登録できない' do
        @item.explanation = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Explanation can't be blank")
      end
      it 'priceが空だと登録できない' do
        @item.price = ''
        @item.valid?
        expect(@item.errors.full_messages).to include('Price is not a number')
      end
      it 'priceが300より少ないと登録できない' do
        @item.price = 299
        @item.valid?
        expect(@item.errors.full_messages).to include('Price must be greater than or equal to 300')
      end
      it 'priceが9999999より多いと登録できない' do
        @item.price = 10000000
        @item.valid?
        expect(@item.errors.full_messages).to include('Price must be less than or equal to 9999999')
      end
      it 'priceが全角数字だと登録できない' do
        @item.price = '３００'
        @item.valid?
        expect(@item.errors.full_messages).to include('Price is not a number')
      end
      it 'typeが指定されていないと登録できない' do
        @item.type_id = 0
        @item.valid?
        expect(@item.errors.full_messages).to include('Type must be other than 0')
      end
      it 'statusが指定されていないと登録できない' do
        @item.status_id_id = 0
        @item.valid?
        expect(@item.errors.full_messages).to include('Status id must be other than 0')
      end
      it 'delivalyが指定されていないと登録できない' do
        @item.delivaly_price_id = 0
        @item.valid?
        expect(@item.errors.full_messages).to include('Delivaly price must be other than 0')
      end
      it 'Prefectureが指定されていないと登録できない' do
        @item.prefecture_id = 0
        @item.valid?
        expect(@item.errors.full_messages).to include('Prefecture must be other than 0')
      end
      it 'family_name_kanaが空だと登録できない' do
        @item.ship_id = 0
        @item.valid?
        expect(@item.errors.full_messages).to include('Ship must be other than 0')
      end
    end
  end
end
