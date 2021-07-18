FactoryBot.define do
  factory :user do
    nickname {Faker::Name.last_name}
    email {Faker::Internet.free_email}
    password = Faker::Internet.password(min_length: 6)
    password {password}
    password_confirmation {password}
    family_name {Faker::Name.last_name}
    first_name {Faker::Name.first_name}
    family_name_reading {Faker::Name.last_name}
    first_name_reading {Faker::Name.first_name}
    birthday{19901101}
  end
end