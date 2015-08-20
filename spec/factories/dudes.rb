# == Schema Information
#
# Table name: dudes
#
#  id          :integer          not null, primary key
#  bullet_type :string
#  bullets     :integer
#  control     :integer
#  influence   :integer
#  upkeep      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
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
