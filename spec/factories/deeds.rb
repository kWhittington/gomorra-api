# == Schema Information
#
# Table name: deeds
#
#  id         :integer          not null, primary key
#  name       :string
#  cost       :integer
#  production :integer
#  control    :integer
#  keywords   :string
#  text       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :deed do
    control { Faker::Number.digit }
    cost { Faker::Number.digit }
    name { Faker::Lorem.word }
    production { Faker::Number.digit }
    text { Faker::Lorem.sentence }
  end
end
