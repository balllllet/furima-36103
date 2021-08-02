require 'rails_helper'

RSpec.describe OrderAddress, type: :model do
  before do
    user = FactoryBot.create(:user)
    item = FactoryBot.create(:item)
    @order = FactoryBot.build(:order_address, user_id: user.id, item_id: item.id)
    sleep 0.1
  end

  context '内容に問題ない場合' do
    it "全て入力すると保存ができること" do
      expect(@order).to be_valid
    end
  end


  context '内容に問題がある場合' do
    it "tokenが空では登録できないこと" do
      @order.token = nil
      @order.valid?
      expect(@order.errors.full_messages).to include("Token can't be blank")
    end

    it "user_idが空では保存ができないこと" do
      @order.user_id = nil
      @order.valid?
      expect(@order.errors.full_messages).to include("User can't be blank")
    end

    it "item_idが空では登録できないこと" do
      @order.item_id = nil
      @order.valid?
      expect(@order.errors.full_messages).to include("Item can't be blank")
    end

    it "郵便番号が空では保存ができないこと" do
      @order.post = nil
      @order.valid?
      expect(@order.errors.full_messages).to include("Post can't be blank")
    end

    it "都道府県が空では登録できないこと" do
      @order.prefecture_id = nil
      @order.valid?
      expect(@order.errors.full_messages).to include("Prefecture can't be blank")
    end

    it "市区町村が空では登録できないこと" do
      @order.city = nil
      @order.valid?
      expect(@order.errors.full_messages).to include("City can't be blank")
    end

    it "番地が空では登録できないこと" do
      @order.address = nil
      @order.valid?
      expect(@order.errors.full_messages).to include("Address can't be blank")
    end

    it "電話番号が空では登録できないこと" do
      @order.tel = nil
      @order.valid?
      expect(@order.errors.full_messages).to include("Tel can't be blank")
    end

  end  

end
