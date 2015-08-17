FactoryGirl.define do
  factory :bullet do
    cartridge { Bullet::CARTRIDGES.sample }
    quantity { Bullet::QUANTITIES.sample }
  end
end
