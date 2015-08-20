# == Schema Information
#
# Table name: ranks
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  value      :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'support/models/concerns/nameable_helper'
require 'support/models/rank_helper'
require 'support/rails/rails_helper'

tags = {
  model: :rank,
  type: :model
}

RSpec.describe Rank, tags do
  subject(:rank) { build(:rank) }

  it_behaves_like 'nameable'

  it 'has a readonly value' do
    is_expected.to have_readonly_attribute(:value)
  end

  it 'validates presence of value' do
    is_expected.to validate_presence_of(:value)
  end

  it 'validates uniqueness of value' do
    is_expected.to validate_uniqueness_of(:value)
  end

  describe '.names' do
    subject(:names) { described_class.names }

    it 'is a collection of all rank names' do
      is_expected.to eq(described_class.pluck(:name))
    end
  end

  describe '.values' do
    subject(:values) { described_class.values }

    it 'is a collection of all rank values' do
      is_expected.to eq(described_class.pluck(:value))
    end
  end
end
