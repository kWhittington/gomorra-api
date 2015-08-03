require 'support/models/suit_helper'
require 'support/rails/rails_helper'

tags = {
  model: :suit,
  type: :model
}

RSpec.describe Suit, tags do
  subject(:suit) { described_class.new(params) }
  let(:params) { { name: name } }
  let(:name) { Faker::Lorem.word }

  it 'has readonly name' do
    is_expected.to have_readonly_attribute(:name)
  end

  it 'validates presence of name' do
    is_expected.to validate_presence_of(:name)
  end

  it 'validates uniqueness, case insensitive, of name' do
    is_expected.to validate_uniqueness_of(:name)
  end
end
