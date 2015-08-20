require 'support/rails/rails_helper'

tags = {
  finder: :playing_cards,
  type: :finder
}

RSpec.describe PlayingCards, tags do
  describe '.ace_of_clubs' do
    subject(:ace_of_clubs) { described_class.ace_of_clubs }

    pending 'is a playing card' do
      is_expected.to be_a(PlayingCard)
    end

    pending 'has an ace ranking' do
      expect(ace_of_clubs.rank.name).to eq('ace')
    end

    pending 'is in the suit of clubs' do
      expect(ace_of_clubs.suit.name).to eq('suit')
    end
  end

  describe '.rank(name)' do
    subject(:rank) { described_class.rank(name) }
    let(:name) { Rank.pluck(:name).sample }

    it 'is a collection of all playing cards with a rank with the name' do
      playing_cards = PlayingCard.includes(:rank).where(ranks: { name: name })
      is_expected.to eq(playing_cards)
    end
  end

  describe '.suit(name)' do
    subject(:suit) { described_class.suit(name) }
    let(:name) { Suit.pluck(:name).sample }

    it 'is a collection of all playing cards with a suit with the name' do
      playing_cards = PlayingCard.includes(:suit).where(suits: { name: name })
      is_expected.to eq(playing_cards)
    end
  end
end
