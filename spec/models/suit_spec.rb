require 'support/rails/rails_helper'

tags = {
  type: :model
}

RSpec.describe Suit, tags do
  describe '::NAMES' do
    subject(:names) { described_class::NAMES }

    it { is_expected.to have_exactly(4).items }
    it { is_expected.to include('club') }
    it { is_expected.to include('diamond') }
    it { is_expected.to include('heart') }
    it { is_expected.to include('spade') }
  end

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
