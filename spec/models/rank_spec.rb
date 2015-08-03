require 'support/models/rank_helper'
require 'support/rails/rails_helper'

tags = {
  model: :rank,
  type: :model
}

RSpec.describe Rank, tags do
  subject(:rank) { described_class.new(params) }
  let(:params) { { name: name, value: value } }
  let(:name) { Faker::Lorem.word }
  let(:value) { Faker::Number.number(2) }

  it 'has a readonly name' do
    is_expected.to have_readonly_attribute(:name)
  end

  it 'has a readonly value' do
    is_expected.to have_readonly_attribute(:value)
  end

  it 'validates presence of name' do
    is_expected.to validate_presence_of(:name)
  end

  it 'validates presence of value' do
    is_expected.to validate_presence_of(:value)
  end

  it 'validates uniqueness, case insensitive, of name' do
    is_expected.to validate_uniqueness_of(:name)
  end

  it 'validates uniqueness of value' do
    is_expected.to validate_uniqueness_of(:value)
  end
end
