FactoryGirl.define do
  factory :suit do
    sequence(:name) { |n| "#{Faker::Lorem.word}#{n}" }
  end
end
