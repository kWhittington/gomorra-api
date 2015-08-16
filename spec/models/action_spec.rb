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

require 'support/models/concerns/keywordable_helper'
require 'support/rails/rails_helper'

tags = {
  type: :model
}

RSpec.describe Action, tags do
  it_behaves_like 'keywordable'

  it 'has readonly cost' do
    is_expected.to have_readonly_attribute(:cost)
  end

  it 'has readonly name' do
    is_expected.to have_readonly_attribute(:name)
  end

  it 'has readonly text' do
    is_expected.to have_readonly_attribute(:text)
  end

  it 'belongs to a playing card' do
    is_expected.to belong_to(:playing_card)
  end

  it 'validates presence of cost' do
    is_expected.to validate_presence_of(:cost)
  end

  it 'validates presence of name' do
    is_expected.to validate_presence_of(:name)
  end

  it 'validates presence of text' do
    is_expected.to validate_presence_of(:text)
  end

  it 'validates presence of playing card' do
    is_expected.to validate_presence_of(:playing_card)
  end
end
