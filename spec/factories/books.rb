FactoryBot.define do
  factory :book do
    title { Faker::Book.title }
    link { Faker::Internet.url }
    category { ["Fiction", "Comics", "Non-Fiction"].sample }
    author { Faker::Book.author }
  end
end