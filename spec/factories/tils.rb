# frozen_string_literal: true

FactoryBot.define do
  factory :til do
    association :user
    title { Faker::Lorem.sentence }
    notes { Faker::Lorem.paragraph }

    trait :published do
      published_at Time.current
    end

    trait :draft do
      published_at nil
    end
  end
end
