require 'support/models/rank_helper'
require 'support/rails/rails_helper'

tags = {
  model: :rank,
  type: :model
}

RSpec.describe Rank, tags do
  subject(:rank) { described_class.new }

  it 'has a readonly name' do
    is_expected.to have_readonly_attribute(:name)
  end

  it 'has a readonly value' do
    is_expected.to have_readonly_attribute(:value)
  end
end
