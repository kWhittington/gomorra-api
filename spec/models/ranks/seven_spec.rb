require 'support/models/rank_helper'
require 'support/rails/rails_helper'

module Ranks
  tags = {
    model: :rank,
    rank: :seven,
    type: :model
  }

  RSpec.describe Seven, tags do
    subject(:seven) { described_class.new }
    it_behaves_like 'a Rank'

    describe '#value' do
      subject(:value) { seven.value }

      it 'is 7' do
        is_expected.to eq(7)
      end
    end
  end
end
