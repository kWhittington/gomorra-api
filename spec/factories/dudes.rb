# == Schema Information
#
# Table name: dudes
#
#  id              :integer          not null, primary key
#  name            :string
#  bullet_type     :string
#  bullet_quantity :integer
#  influence       :integer
#  control         :integer
#  upkeep          :integer
#  cost            :integer
#  keywords        :string
#  text            :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

FactoryGirl.define do
  factory :dude do
    bullets { Faker::Number.digit }
    control { Faker::Number.digit }
    influence { Faker::Number.digit }
    upkeep { Faker::Number.digit }

    trait :draw do
      bullet_type 'draw'
    end

    trait :stud do
      bullet_type 'stud'
    end

    factory :draw_dude, traits: [:draw]
    factory :stud_dude, traits: [:stud]
  end
end
