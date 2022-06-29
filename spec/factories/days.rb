FactoryBot.define do
  factory :day do
    title { Faker::DcComics.title }
    active { Faker::Boolean.boolean }
    association :week, factory: :week
  end
end
