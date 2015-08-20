# == Schema Information
#
# Table name: actions
#
#  id         :integer          not null, primary key
#  name       :string
#  text       :string
#  cost       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :action do
    cost { Faker::Number.digit }
    name { Faker::Lorem.word }
    text { Faker::Lorem.sentence }

    association :playing_card
  end
end
