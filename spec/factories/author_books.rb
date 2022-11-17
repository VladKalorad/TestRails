# frozen_string_literal: true

FactoryBot.define do
  factory :author_books do
    association :book
    association :author
  end
end
