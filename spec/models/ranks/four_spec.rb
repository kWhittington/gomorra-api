require 'support/models/rank_helper'
require 'support/rails/rails_helper'

module Ranks
  tags = {
    model: :rank,
    rank: :four,
    type: :model
  }

  RSpec.describe Four, tags do
    subject(:four) { described_class.new }
    it_behaves_like 'a Rank'

    describe '#value' do
      subject(:value) { four.value }

      it 'is 4' do
        is_expected.to eq(4)
      end
    end
  end
end
