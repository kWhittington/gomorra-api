require 'support/models/rank_helper'
require 'support/rails/rails_helper'

module Ranks
  tags = {
    model: :rank,
    rank: :queen,
    type: :model
  }

  RSpec.describe Queen, tags do
    it_behaves_like 'a Rank'

    describe '.value' do
      subject(:value) { described_class.value }

      it 'is 12' do
        is_expected.to eq(12)
      end
    end
  end
end
