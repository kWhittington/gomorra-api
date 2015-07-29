require 'support/models/rank_helper'
require 'support/rails/rails_helper'

module Ranks
  tags = {
    model: :rank,
    rank: :ace,
    type: :model
  }

  RSpec.describe Ace, tags do
    subject(:ace) { described_class.new }
    it_behaves_like 'a Rank'

    describe '#value' do
      subject(:value) { ace.value }

      it 'is 1' do
        is_expected.to eq(1)
      end
    end
  end
end
