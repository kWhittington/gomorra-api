require 'support/models/concerns/keywordable_helper'
require 'support/rails/rails_helper'

tags = {
  type: :model
}

RSpec.describe Spell, tags do
  it_behaves_like 'keywordable'

  it 'has a readonly cost' do
    is_expected.to have_readonly_attribute(:cost)
  end

  it 'has a readonly name' do
    is_expected.to have_readonly_attribute(:name)
  end

  it 'has a readonly text' do
    is_expected.to have_readonly_attribute(:text)
  end

  it 'belongs to a playing card' do
    is_expected.to belong_to(:playing_card)
  end
end
