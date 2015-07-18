require 'support/rails/rails_helper'

tags = {
  type: :model
}

RSpec.describe Suit, tags do
  describe '::NAMES' do
    subject(:names) { described_class::NAMES }

    it 'has exactly four names' do
      is_expected.to have_exactly(4).names
    end

    it 'maps :clubs to `club`' do
      is_expected.to include(clubs: 'club')
    end

    it 'maps :diamonds to `diamond`' do
      is_expected.to include(diamonds: 'diamond')
    end

    it 'maps :hearts to `heart`' do
      is_expected.to include(hearts: 'heart')
    end

    it 'maps :spades to `spade' do
      is_expected.to include(spades: 'spade')
    end
  end

  subject(:suit) { described_class.new(name: name) }
  let(:name) { Faker::Lorem.word }

  it 'has a #name reader' do
    is_expected.to respond_to(:name)
  end
end
