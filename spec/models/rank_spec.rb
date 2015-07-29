require 'support/models/rank_helper'
require 'support/rails/rails_helper'

tags = {
  model: :rank,
  type: :model
}

RSpec.describe Rank, tags do
  subject(:rank) { described_class.new }
  it_behaves_like 'a Rank'

  describe '#value' do
    subject(:value) { rank.value }

    it 'must be implemented by subclasses' do
      expect { value }.to raise_error(
        NotImplementedError,
        'This Rank has no implementation for: #value'
      )
    end
  end
end
