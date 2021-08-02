class OrderAddress
  include ActiveModel::Model
  attr_accessor :token, :item_id, :user_id, :post, :prefecture_id, :city, :address, :building, :tel

  with_options presence: true do
    validates :token
    validates :post, format: { with:/\A\d{3}[-]\d{4}\z/} 
    validates :prefecture_id, numericality: { other_than: 0 } 
    validates :city           
    validates :address            
    validates :tel, numericality: { only_integer: true },length: { maximum: 11, minimum: 10}         
    validates :user_id       
    validates :item_id 
  end        
  
  def save
    order = Order.create(item_id: item_id, user_id: user_id) 
    Address.create(post: post, prefecture_id: prefecture_id, city: city, address: address, building: building, tel: tel, order_id: order.id)
  end
end
 


