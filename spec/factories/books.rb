FactoryBot.define do
  factory :book do
    title { Faker::Book.title }
    author { Faker::Book.author }
    genre { Faker::Book.genre }
    published { Faker::Date.between(from: 2.days.ago, to: Date.today) }
  end
end
