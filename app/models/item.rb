class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :sales_status
  belongs_to :shipping_fee_status
  belongs_to :prefecture
  belongs_to :scheduled_delivery
  has_one_attached :image
  belongs_to :user
  
  with_options presence: true do
    validates :image
    validates :name
    validates :description
    validates :price
    validates :category_id
    validates :sales_status_id
    validates :shipping_fee_status_id
    validates :prefecture_id
    validates :scheduled_delivery_id
  end

  
  validates :price, numericality: {only_integer: true, greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999, message: "is invalid"}
  validates :price, format: {with: /\A[a-z0-9]+\z/i, message: "is invalid. Input half-width characters."}
  
  

  with_options numericality: { other_than: 0 }  do
      validates :category_id 
      validates :sales_status_id 
      validates :shipping_fee_status_id
      validates :prefecture_id
      validates :scheduled_delivery_id
  end

 end
 