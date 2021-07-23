FactoryBot.define do
  factory :item do
   name {"あ"} 
   description {"あ"}
   price {300}
   category_id {2}
   sales_status_id {2}
   shipping_fee_status_id {2}
   prefecture_id {2}
   scheduled_delivery_id {2}

   association :user

   after(:build) do |item|
    item.image.attach(io: File.open('public/images/テスト画像.png'), filename: 'test_image.png')
  end
    
  end
end
