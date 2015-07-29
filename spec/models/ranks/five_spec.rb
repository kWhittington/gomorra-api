require 'support/models/rank_helper'
require 'support/rails/rails_helper'

module Ranks
  tags = {
    model: :rank,
    rank: :five,
    type: :model
  }

  RSpec.describe Five, tags do
    it_behaves_like 'a Rank'

    describe '.value' do
      subject(:value) { described_class.value }

      it 'is 5' do
        is_expected.to eq(5)
      end
    end
  end
end
