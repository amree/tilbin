FactoryGirl.define do
  factory :til do
    title Faker::Lorem.sentence
    notes Faker::Lorem.paragraph

    trait :published do
      published_at Time.current
    end

    trait :draft do
      published_at nil
    end
  end
end