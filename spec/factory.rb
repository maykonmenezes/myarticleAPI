FactoryBot.define do
  factory :random_articles, class: Article do
    title { Faker::Book.title }
    body { Faker::Lorem.sentence }
  end
end
