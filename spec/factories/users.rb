FactoryBot.define do
  factory :user do
    nickname { Faker::Name.name }
    email { Faker::Internet.free_email }
    password { Faker::Internet.password(min_length: 8) + "1a" }
    password_confirmation { password }
    birth_place { Faker::Address.city }
  end
end
