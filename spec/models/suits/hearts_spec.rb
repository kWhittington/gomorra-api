require 'support/models/suit_helper'
require 'support/rails/rails_helper'

module Suits
  tags = {
    model: :suit,
    type: :model
  }

  RSpec.describe Hearts, tags do
    subject(:hearts) { described_class.new }
    it_behaves_like 'a Suit'

    describe '#name' do
      subject(:name) { hearts.name }

      it 'is "suit of hearts"' do
        is_expected.to eq('suit of hearts')
      end
    end
  end
end
