require 'support/rails/rails_helper'

tags = {
  type: :model
}

RSpec.describe Suit, tags do
  subject(:suit) { described_class.new(name: name) }
  let(:name) { Faker::Lorem.word }

  it 'has a #name reader' do
    is_expected.to respond_to(:name)
  end
end
