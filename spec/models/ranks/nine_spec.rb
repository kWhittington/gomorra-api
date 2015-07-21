require 'support/models/rank_helper'
require 'support/rails/rails_helper'

module Ranks
  tags = {
    model: :rank,
    rank: :nine,
    type: :model
  }

  RSpec.describe Nine, tags do
    it_behaves_like 'a Rank'

    describe '.value' do
      subject(:value) { described_class.value }

      it 'is 9' do
        is_expected.to eq(9)
      end
    end
  end
end
