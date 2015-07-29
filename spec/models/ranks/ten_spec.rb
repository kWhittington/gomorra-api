require 'support/models/rank_helper'
require 'support/rails/rails_helper'

module Ranks
  tags = {
    model: :rank,
    rank: :ten,
    type: :model
  }

  RSpec.describe Ten, tags do
    subject(:ten) { described_class.new }
    it_behaves_like 'a Rank'

    describe '#value' do
      subject(:value) { ten.value }

      it 'is 10' do
        is_expected.to eq(10)
      end
    end
  end
end
