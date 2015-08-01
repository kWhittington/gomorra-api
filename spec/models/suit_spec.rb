require 'support/models/suit_helper'
require 'support/rails/rails_helper'

tags = {
  model: :suit,
  type: :model
}

RSpec.describe Suit, tags do
  subject(:suit) { described_class.new }

  it 'has readonly name' do
    is_expected.to have_readonly_attribute(:name)
  end
end
