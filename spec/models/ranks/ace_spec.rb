require 'support/models/rank_helper'
require 'support/rails/rails_helper'

module Ranks
  tags = {
    model: :rank,
    rank: :ace,
    type: :model
  }

  RSpec.describe Ace, tags do
    it_behaves_like 'a Rank'

    describe '.value' do
      subject(:value) { described_class.value }

      it 'is 1' do
        is_expected.to eq(1)
      end
    end
  end
end
