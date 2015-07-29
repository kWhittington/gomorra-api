require 'support/models/rank_helper'
require 'support/rails/rails_helper'

module Ranks
  tags = {
    model: :rank,
    rank: :three,
    type: :model
  }

  RSpec.describe Three, tags do
    subject(:three) { described_class.new }
    it_behaves_like 'a Rank'

    describe '#value' do
      subject(:value) { three.value }

      it 'is 3' do
        is_expected.to eq(3)
      end
    end
  end
end
