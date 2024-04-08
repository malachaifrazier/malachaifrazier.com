FactoryBot.define do
  factory :project do
    name { Faker::Name.name }
    slug { Faker::Name.name }
    year { Faker::Number.number(digits: 4) }
    description { Faker::Lorem.sentence }
    outcome { Faker::Lorem.sentence }
    notes { Faker::Lorem.sentence }
    link { Faker::Internet.url }
  end
end
