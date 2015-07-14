require 'support/rails/rails_helper'

tags = {
  type: :model
}

RSpec.describe Suit, tags do
  describe '::NAMES' do
    subject(:names) { described_class::NAMES }

    it 'has exactly four elements' do
      is_expected.to have_exactly(4).items
    end

    it 'includes `club`' do
      is_expected.to include('club')
    end

    it 'includes `diamond`' do
      is_expected.to include('diamond')
    end

    it 'includes `heart`' do
      is_expected.to include('heart')
    end

    it 'includes `spade`' do
      is_expected.to include('spade')
    end
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
