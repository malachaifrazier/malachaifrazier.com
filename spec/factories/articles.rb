FactoryBot.define do
  factory :article do
    title { Faker::Book.title }
    content { Faker::Lorem.sentence }
    published { Faker::Date.between(from: 2.days.ago, to: Date.today) }
  end
end
