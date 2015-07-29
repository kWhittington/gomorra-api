require 'support/models/suit_helper'
require 'support/rails/rails_helper'

module Suits
  tags = {
    model: :suit,
    type: :model
  }

  RSpec.describe Clubs, tags do
    it_behaves_like 'a Suit'

    describe '.name' do
      subject(:name) { described_class.name }

      it 'is "suit of cards"' do
        is_expected.to eq('suit of clubs')
      end
    end
  end
end
