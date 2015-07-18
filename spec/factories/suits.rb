FactoryGirl.define do
  factory :suit do
    name { Suit::NAMES.sample }
  end

  trait(:club) { name { 'club' } }
  trait(:diamond) { name { 'diamond' } }
  trait(:heart) { name { 'heart' } }
  trait(:spade) { name { 'spade' } }

  factory :club, traits: [:club]
  factory :diamond, traits: [:diamond]
  factory :heart, traits: [:heart]
  factory :spade, traits: [:spade]
end
