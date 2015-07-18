require 'support/rails/rails_helper'

tags = {
  type: :model
}

RSpec.describe Suit, tags do
  it 'has many playing cards' do
    is_expected.to have_many(:playing_cards)
  end

  it 'has readonly name' do
    is_expected.to have_readonly_attribute(:name)
  end
end
