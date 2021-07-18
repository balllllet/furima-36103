class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname,            presence: true  
  validates :family_name,         presence: true    
  validates :first_name,          presence: true
  validates :family_name_reading, presence: true,
  format: {
    with: /\A[\p{katakana} ー－&&[^ -~｡-ﾟ]]+\z/
  }
  validates :first_name_reading,  presence: true,
  format: {
    with: /\A[\p{katakana} ー－&&[^ -~｡-ﾟ]]+\z/
  }
  validates :birthday,            presence: true    
   
  has_many :items
  has_many :purchases
end
