require 'support/models/rank_helper'
require 'support/rails/rails_helper'

module Ranks
  tags = {
    model: :rank,
    rank: :seven,
    type: :model
  }

  RSpec.describe Seven, tags do
    it_behaves_like 'a Rank'

    describe '.value' do
      subject(:value) { described_class.value }

      it 'is 7' do
        is_expected.to eq(7)
      end
    end
  end
end
