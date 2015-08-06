require 'support/rails/rails_helper'

tags = {
  model: :playing_card,
  type: :model
}

RSpec.describe PlayingCard, tags do
  subject(:playing_card) { described_class.new }

  it 'belongs to a rank' do
    is_expected.to belong_to(:rank)
  end

  it 'belongs to a suit' do
    is_expected.to belong_to(:suit)
  end

  it 'validates uniqueness of rank and suit' do
    is_expected.to validate_uniqueness_of(:rank_id)
      .with_message('there can only be one rank of each suit')
      .scoped_to(:suit_id)
  end

  describe 'magic rank finders' do
    subject(:finder) { described_class.send(method) }
    let(:method) { Rank.names.sample }

    it 'is a relation' do
      is_expected.to be_an(ActiveRecord::Relation)
    end

    it 'is a collection of cards with a rank of the method name' do
      is_expected.to eq(described_class.with_rank(method))
    end
  end

  describe '.exists_with_rank(name)' do
    subject(:exists_with_rank) { described_class.exists_with_rank(name) }

    context 'when a playing card with the rank exists' do
      let(:name) { Rank.names.sample }

      it 'is true' do
        is_expected.to be_truthy
      end
    end

    context 'when a playing card with the rank does not exist' do
      let(:name) { "#{Faker::Lorem.word}1x" }

      it 'is false' do
        is_expected.to be_falsey
      end
    end
  end

  describe '.exists_with_suit(name)' do
    subject(:exists_with_suit) { described_class.exists_with_suit(name) }

    context 'when a playing card with the suit exists' do
      let(:name) { Suit.names.sample }

      it 'is true' do
        is_expected.to be_truthy
      end
    end

    context 'when a playing card with the suit does not exist' do
      let(:name) { "#{Faker::Lorem.word}1x" }

      it 'is false' do
        is_expected.to be_falsey
      end
    end
  end

  describe '.respond_to?(method)' do
    subject(:respond_to) { described_class.respond_to?(method) }

    context 'when method is a rank name' do
      let(:method) { Rank.names.sample }

      it 'is true' do
        is_expected.to be_truthy
      end
    end
  end

  describe '.of(suit)' do
    subject(:of) { described_class.of(suit) }
    let(:suit) { Suit.names.sample }

    it 'is a playing card' do
      is_expected.to be_a(described_class)
    end

    it 'is the first playing card of the specified suit' do
      playing_card = described_class.includes(:suit)
                     .where(suits: { name: suit }).first
      is_expected.to eq(playing_card)
    end
  end

  describe '.with_rank(name)' do
    subject(:with_rank) { described_class.with_rank(name) }
    let(:name) { Rank.names.sample }

    it 'is a collection of playing cards with the specified ranking' do
      playing_cards = described_class.includes(:rank)
                      .where(ranks: { name: name })
      is_expected.to eq(playing_cards)
    end
  end

  describe '.with_suit(name)' do
    subject(:with_suit) { described_class.with_suit(name) }
    let(:name) { Suit.names.sample }

    it 'is a collection of playing cards with the specified suit' do
      playing_cards = described_class.includes(:suit)
                      .where(suits: { name: name })
      is_expected.to eq(playing_cards)
    end
  end
end
