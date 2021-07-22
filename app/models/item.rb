class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :sales_status
  belongs_to :shipping_fee_status
  belongs_to :prefecture
  belongs_to :scheduled_delivery
  has_one_attached :image
  belongs_to :user
  
  
  validates :image, presence: true
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :price, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999, message: "is invalid"}
  validates :price, format: {with: /\A[a-z0-9]+\z/i, message: "is invalid. Input half-width characters."}
  validates :category_id, presence: true
  validates :category_id, numericality: { other_than: 1 } 
  validates :sales_status_id, presence: true
  validates :sales_status_id, numericality: { other_than: 1 } 
  validates :shipping_fee_status_id, presence: true
  validates :shipping_fee_status_id, numericality: { other_than: 1 } 
  validates :prefecture_id, presence: true
  validates :prefecture_id, numericality: { other_than: 0 } 
  validates :scheduled_delivery_id, presence: true
  validates :scheduled_delivery_id, numericality: { other_than: 1 } 


 end
 