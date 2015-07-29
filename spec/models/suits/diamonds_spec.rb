require 'support/models/suit_helper'
require 'support/rails/rails_helper'

module Suits
  tags = {
    model: :suit,
    type: :model
  }

  RSpec.describe Diamonds, tags do
    subject(:diamonds) { described_class.new }
    it_behaves_like 'a Suit'

    describe '.name' do
      subject(:name) { diamonds.name }

      it 'is "suit of diamonds"' do
        is_expected.to eq('suit of diamonds')
      end
    end
  end
end
