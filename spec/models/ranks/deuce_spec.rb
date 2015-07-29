require 'support/models/rank_helper'
require 'support/rails/rails_helper'

module Ranks
  tags = {
    model: :rank,
    rank: :deuce,
    type: :model
  }

  RSpec.describe Deuce, tags do
    subject(:deuce) { described_class.new }
    it_behaves_like 'a Rank'

    describe '#value' do
      subject(:value) { deuce.value }

      it 'is 2' do
        is_expected.to eq(2)
      end
    end
  end
end
