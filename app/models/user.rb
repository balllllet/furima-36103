class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname,            presence: true
  
  with_options presence: true do
    validates :family_name, format: {with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/}
    validates :first_name, format: {with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/}
    validates :family_name_reading, format: {with: /\A[ァ-ヶー]+\z/}
    validates :first_name_reading, format: {with: /\A[ァ-ヶー]+\z/}
  end
  validates :password, format: {with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i}
  validates :birthday,            presence: true    
   
  has_many :items
  has_many :purchases
end
