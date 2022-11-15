FactoryBot.define do
  factory :subscriber do
    sequence(:name) { |n| "name#{n}" }
    #email { Faker::Internet.email(name: Faker::Name.name, separators: '_', domain: 'mail.ru') }
    trait :in_valid do
      name { 'name1' }
    end
    factory :subscriber_with_subscriptions do
      transient do
        subscriptions_count { 5 }
      end
      after(:create) do |subscriber, evaluator|
        
       #create_list(:subscription, evaluator.subscriptions_count, subscriber: )

        subscriber.reload
      end
    end
  end
end