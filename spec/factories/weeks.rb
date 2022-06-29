FactoryBot.define do
  factory :week do
    title { Faker::DcComics.title }
    active { Faker::Boolean.boolean }
    association :program, factory: :program
  end
end
