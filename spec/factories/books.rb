# frozen_string_literal: true

FactoryBot.define do
  factory :book do
    sequence(:name) { |n| "name#{n}" }
    year { rand(2017..2020) }
    quantity { rand(1..15) }
    # status {1}
    trait :old do
      year { rand(1900..1940) }
    end
    trait :with_genres do
      after_create do |book|
        book.details << FactoryBot.create(:genre)
      end
    end
    # trait :archived do
    # status {0}
    # end
  end
end
