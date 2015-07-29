require 'support/models/rank_helper'
require 'support/rails/rails_helper'

module Ranks
  tags = {
    model: :rank,
    rank: :six,
    type: :model
  }

  RSpec.describe Six, tags do
    subject(:six) { described_class.new }
    it_behaves_like 'a Rank'

    describe '#value' do
      subject(:value) { six.value }

      it 'is 6' do
        is_expected.to eq(6)
      end
    end
  end
end
