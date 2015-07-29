require 'support/models/rank_helper'
require 'support/rails/rails_helper'

module Ranks
  tags = {
    model: :rank,
    rank: :jack,
    type: :model
  }

  RSpec.describe Jack, tags do
    subject(:jack) { described_class.new }
    it_behaves_like 'a Rank'

    describe '#value' do
      subject(:value) { jack.value }

      it 'is 11' do
        is_expected.to eq(11)
      end
    end
  end
end
