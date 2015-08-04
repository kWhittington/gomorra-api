require 'support/rails/rails_helper'

tags = {
  model: :playing_card,
  type: :model
}

RSpec.describe PlayingCard, tags do
  subject(:playing_card) { described_class.new }

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
end
