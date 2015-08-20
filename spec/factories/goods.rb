# == Schema Information
#
# Table name: goods
#
#  id              :integer          not null, primary key
#  cost            :integer
#  name            :string
#  bullet_type     :string
#  bullet_quantity :integer
#  influence       :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

FactoryGirl.define do
  factory :good do
    cost { Faker::Number.digit }
    name { Faker::Lorem.word }
    text { Faker::Lorem.sentence }
  end
end
