require 'support/models/suit_helper'
require 'support/rails/rails_helper'

module Suits
  tags = {
    model: :suit,
    type: :model
  }

  RSpec.describe Spades, tags do
    subject(:spades) { described_class.new }
    it_behaves_like 'a Suit'

    describe '#name' do
      subject(:name) { spades.name }

      it 'is "suit of spades"' do
        is_expected.to eq('suit of spades')
      end
    end
  end
end
