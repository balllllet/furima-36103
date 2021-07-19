FactoryBot.define do
  factory :user do
    nickname { "test" }
    email {Faker::Internet.free_email}
    password = 'a1' + Faker::Internet.password(min_length: 6)
    password {password}
    password_confirmation {password}
    family_name {"山田"}
    first_name {"タロウ"}
    family_name_reading {"ヤマダ"}
    first_name_reading {"タロウ"}
    birthday{"1990-11-01"}
  end
end