# frozen_string_literal: true

FactoryBot.define do
  factory :author do
    sequence(:name) { |n| "name#{n}" }
    trait :in_valid do
      name { 'name1' }
    end
    factory :author_with_books do
      transient do
        books_count { 5 }
      end
      after(:create) do |authors, evaluator|
        create_list(:book, evaluator.books_count, author: authors)

        authors.reload
      end
    end
  end
end
