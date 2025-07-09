FactoryBot.define do
  factory :product do
    sequence(:name) { |n| "Produto #{n}" }
    description { Faker::Lorem.sentence(word_count: 10) }
    price { Faker::Number.between(from: 10, to: 1000) }
    association :productable, factory: :category, strategy: :build
  end
end
