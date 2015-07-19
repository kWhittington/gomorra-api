require 'support/rails/rails_helper'

tags = {
  model: :suit,
  type: :model
}

RSpec.describe Suit, tags do
  subject(:suit) { described_class.of(name) }
  let(:name) { Faker::Lorem.word.pluralize }

  it 'has a #name reader' do
    is_expected.to respond_to(:name)
  end

  it 'has no .new method' do
    expect(described_class).not_to respond_to(:new)
  end

  describe '.of(name)' do
    subject(:of) { described_class.of(name) }
    let(:name) { Faker::Lorem.word.pluralize }

    it 'is a suit' do
      is_expected.to be_a(described_class)
    end

    it 'has the specified name' do
      is_expected.to have_attributes(name: name)
    end
  end
end
