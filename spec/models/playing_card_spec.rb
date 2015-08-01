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
end
