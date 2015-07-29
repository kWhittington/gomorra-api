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
    name "MyString"
cost 1
production 1
control 1
keywords "MyString"
text "MyString"
  end

end
