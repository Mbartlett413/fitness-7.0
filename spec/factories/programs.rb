FactoryBot.define do
  factory :program do
    title { Faker::DcComics.title }
    blueprint { Faker::Boolean.boolean }
    cost { [*1..20].sample }
    num_weeks { [*0..4].sample }
    days_per_week { [*0..4].sample }
    association :user, factory: :user
  end
end
