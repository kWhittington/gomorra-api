require 'support/rails/rails_helper'

tags = {
  model: :rank,
  type: :model
}

RSpec.describe Rank, tags do
  subject(:rank) { described_class.instance }

  describe '#name' do
    subject(:name) { rank.name }

    it 'is the class name, lowercase' do
      is_expected.to eq(described_class.to_s.downcase)
    end
  end

  describe '#value' do
    subject(:value) { rank.value }

    it 'fails with a NotImplementedError' do
      expect { value }.to raise_error(
        NotImplementedError,
        'This Rank has no implementation for: #value'
      )
    end
  end
end
