require 'support/models/rank_helper'
require 'support/rails/rails_helper'

module Ranks
  tags = {
    model: :rank,
    rank: :king,
    type: :model
  }

  RSpec.describe King, tags do
    subject(:king) { described_class.new }
    it_behaves_like 'a Rank'

    describe '#value' do
      subject(:value) { king.value }

      it 'is 13' do
        is_expected.to eq(13)
      end
    end
  end
end
