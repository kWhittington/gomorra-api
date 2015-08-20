FactoryGirl.define do
  factory :rank do
    sequence(:name) { |n| "#{Faker::Lorem.word}#{n}" }
    sequence(:value) { |n| Rank.values.max + n }
  end
end
