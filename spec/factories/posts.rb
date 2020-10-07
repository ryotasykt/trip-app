FactoryBot.define do
  factory :post do
    name { Faker::Name.name }
    description { Faker::Lorem.paragraph }
    member_id { Faker::Number.between(from: 2, to: 8) }
    transportation_id { Faker::Number.between(from: 2, to: 10) }
    satisfaction_level_id { Faker::Number.between(from: 2, to: 6) }
    prefecture_id { Faker::Number.between(from: 2, to: 48) }
    association :user
  
    after(:build) do |sample|
      sample.image.attach(io: File.open('app/assets/images/camera.png'), filename: 'camera.png')
    end
  end
end
