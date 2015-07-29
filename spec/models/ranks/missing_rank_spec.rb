require 'support/models/rank_helper'
require 'support/rails/rails_helper'

module Ranks
  tags = {
    model: :rank,
    rank: :missing_rank,
    type: :model
  }

  RSpec.describe MissingRank, tags do
    it_behaves_like 'a Rank'

    describe '.value' do
      subject(:value) { described_class.value }

      it 'is 0' do
        is_expected.to eq(0)
      end
    end
  end
end
