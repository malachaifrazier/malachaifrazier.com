FactoryBot.define do
  factory :article do
    title   { Faker::Book.title }
    body    { Faker::Lorem.paragraph(sentence_count: 10) }
    slug    { Faker::Book.title.parameterize }
    excerpt { Faker::Lorem.paragraph(sentence_count: 2) }
    publish_at { Faker::Date.between(from: 2.days.from_now, to: 2.years.from_now) }
  end
end
