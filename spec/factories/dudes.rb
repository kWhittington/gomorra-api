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
    name "MyString"
bullet_type "MyString"
bullet_quantity 1
influence 1
control 1
upkeep 1
cost 1
keywords "MyString"
text "MyString"
  end

end
