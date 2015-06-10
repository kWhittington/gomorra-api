# == Schema Information
#
# Table name: playing_cards
#
#  id         :integer          not null, primary key
#  suit       :string
#  rank       :string
#  value      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :playing_card do
    suit "MyString"
rank "MyString"
value 1
  end

end
