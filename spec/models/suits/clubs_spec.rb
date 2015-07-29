require 'support/models/suit_helper'
require 'support/rails/rails_helper'

module Suits
  tags = {
    model: :suit,
    type: :model
  }

  RSpec.describe Clubs, tags do
    subject(:clubs) { described_class.new }
    it_behaves_like 'a Suit'

    describe '#name' do
      subject(:name) { clubs.name }

      it 'is "suit of cards"' do
        is_expected.to eq('suit of clubs')
      end
    end
  end
end
