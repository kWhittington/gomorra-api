require 'support/rails/rails_helper'

tags = {
  type: :model
}

RSpec.describe Suit, tags do
  it 'has many playing cards' do
    is_expected.to have_many(:playing_cards)
  end

  it 'has readonly name' do
    is_expected.to have_readonly_attribute(:name)
  end

  it 'validates name has been whitelisted' do
    is_expected.to validate_inclusion_of(:name).in_array(described_class::NAMES)
  end
end
