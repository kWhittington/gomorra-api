require 'support/models/suit_helper'
require 'support/rails/rails_helper'

module Suits
  tags = {
    model: :suit,
    type: :model
  }

  RSpec.describe MissingSuit, tags do
    it_behaves_like 'a Suit'

    describe '.name' do
      subject(:name) { described_class.name }

      it 'is "suit not present"' do
        is_expected.to eq('suit not present')
      end
    end
  end
end
