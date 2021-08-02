FactoryBot.define do
  factory :order_address do
    token {"tok_abcdefghijk00000000000000000"}
    post {"123-4567"}     
    prefecture_id {2}
    city {"横浜市緑区"}      
    address {"青山1-1-1"}    
    tel {"09012345678"}            
  end
end
