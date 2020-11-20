require 'rails_helper'

RSpec.describe OrderAddress, type: :model do
  before do
    @order_address = FactoryBot.build(:order_address)
  end
  describe '商品購入機能' do
    context '商品購入がうまくいくとき' do
      it '全ての項目の入力が存在すれば登録できる' do
        expect(@order_address).to be_valid
      end
      it 'building_nameが空でも登録できる' do
        @order_address.building_name = ""
        expect(@order_address).to be_valid
      end
    end
    context '商品購入がうまくいかないとき' do
      it "tokenが空では登録できないこと" do
        @order_address.token = nil
        @order_address.valid?
        expect(@order_address.errors.full_messages).to include("Token can't be blank")
      end
      it 'postelが空だと登録できない' do
        @order_address.postel = nil
        @order_address.valid?
        expect(@order_address.errors.full_messages).to include("Postel can't be blank")
      end
      it 'postelにハイフンがないと登録できない' do
        @order_address.postel = 0000000
        @order_address.valid?
        expect(@order_address.errors.full_messages).to include("Postel is invalid. Include hyphen(-)")
      end
      it 'prefectureが指定されていないと登録できない' do
        @order_address.prefecture_id = nil
        @order_address.valid?
        expect(@order_address.errors.full_messages).to include("Prefecture can't be blank")
      end
      it 'cityが空だと登録できない' do
        @order_address.city = nil
        @order_address.valid?
        expect(@order_address.errors.full_messages).to include("City can't be blank")
      end
      it 'house_numberが空だと登録できない' do
        @order_address.house_number = nil
        @order_address.valid?
        expect(@order_address.errors.full_messages).to include("House number can't be blank")
      end
      it 'telが空だと登録できない' do
        @order_address.tel = nil
        @order_address.valid?
        expect(@order_address.errors.full_messages).to include("Tel can't be blank")
      end
      it 'telにハイフンが入っていると登録できない' do
        @order_address.tel = "000-000-000"
        @order_address.valid?
        expect(@order_address.errors.full_messages).to include("Tel is invalid")
      end
      it 'telが11桁以上だと登録できない' do
        @order_address.tel = "000000000000"
        @order_address.valid?
        expect(@order_address.errors.full_messages).to include("Tel is invalid")
      end
    end
  end
end
