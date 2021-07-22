require 'rails_helper'

RSpec.describe Item, type: :model do

  context '商品出品がうまくいくとき' do
    it '全てが入力できていれば登録できること' do
      expect(@item).to be_valid
    end
  end

  context '商品出品がうまくいかないとき' do      
      it 'imageが空では登録できないこと' do
        @item.image = ''
        @user.valid?
        expect(@item.errors.full_messages).to include("Name can't be blank")
      end

      it 'nameが空では登録できないこと' do
        @item.name = ''
        @user.valid?
        expect(@item.errors.full_messages).to include("Name can't be blank")
      end

      it 'descriptionが空では登録できないこと' do
        @item.description = ''
        @user.valid?
        expect(@item.errors.full_messages).to include("Name can't be blank")
      end

      it 'priceが空では登録できないこと' do
        @item.price = ''
        @user.valid?
        expect(@item.errors.full_messages).to include("Name can't be blank")
      end

      it 'priceが300円未満では登録できないこと' do
        @item.price = '299'
        @user.valid?
        expect(@item.errors.full_messages).to include("Name can't be blank")
      end

      it 'priceが9999999円より大きいと登録できないこと' do
        @item.price = '10000000'
        @user.valid?
        expect(@item.errors.full_messages).to include("Name can't be blank")
      end
    
      it 'priceが半角数値以外では登録できないこと' do
        @item.price = 'a'
        @user.valid?
        expect(@item.errors.full_messages).to include("Name can't be blank")
      end

      it 'category_idが空では登録できないこと' do
        @item.category_id = ''
        @user.valid?
        expect(@item.errors.full_messages).to include("Name can't be blank")
      end

      it 'category_idが---では登録できないこと' do
        @item.category_id = '1'
        @user.valid?
        expect(@item.errors.full_messages).to include("Name can't be blank")
      end

      it 'sales_status_idが空では登録できないこと' do
        @item.sales_status_id = ''
        @user.valid?
        expect(@item.errors.full_messages).to include("Name can't be blank")
      end

      it 'sales_status_idが---では登録できないこと' do
        @item.sales_status_id = '1'
        @user.valid?
        expect(@item.errors.full_messages).to include("Name can't be blank")
      end

      it 'shipping_fee_status_idが空では登録できないこと' do
        @item.shipping_fee_status_id = ''
        @user.valid?
        expect(@item.errors.full_messages).to include("Name can't be blank")
      end

      it 'shipping_fee_status_idが---では登録できないこと' do
        @item.shipping_fee_status_id = '1'
        @user.valid?
        expect(@item.errors.full_messages).to include("Name can't be blank")
      end

      it 'prefecture_idが空では登録できないこと' do
        @item.prefecture_id = ''
        @user.valid?
        expect(@item.errors.full_messages).to include("Name can't be blank")
      end
      
      it 'prefecture_idが---では登録できないこと' do
        @item.prefecture_id = '0'
        @user.valid?
        expect(@item.errors.full_messages).to include("Name can't be blank")
      end

      it 'scheduled_delivery_idが空では登録できないこと' do
        @item.scheduled_delivery_id = ''
        @user.valid?
        expect(@item.errors.full_messages).to include("Name can't be blank")
      end

      it 'scheduled_delivery_idが---では登録できないこと' do
        @item.scheduled_delivery_id = '1'
        @user.valid?
        expect(@item.errors.full_messages).to include("Name can't be blank")
      end

  end 
end
