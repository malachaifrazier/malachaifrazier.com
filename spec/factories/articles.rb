FactoryBot.define do
  factory :article do
    title { Faker::Book.title }
    slug { Faker::Book.title.parameterize }
    body { Faker::Lorem.paragraph }
    publish_at { Faker::Date.between(from: 2.days.ago, to: Date.today) }
  end
end
