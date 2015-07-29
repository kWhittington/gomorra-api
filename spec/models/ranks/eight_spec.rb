require 'support/models/rank_helper'
require 'support/rails/rails_helper'

module Ranks
  tags = {
    model: :rank,
    rank: :eight,
    type: :model
  }

  RSpec.describe Eight, tags do
    subject(:eight) { described_class.new }
    it_behaves_like 'a Rank'

    describe '#value' do
      subject(:value) { eight.value }

      it 'is 8' do
        is_expected.to eq(8)
      end
    end
  end
end
