# == Schema Information
#
# Table name: suits
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'support/models/concerns/nameable_helper'
require 'support/models/suit_helper'
require 'support/rails/rails_helper'

tags = {
  model: :suit,
  type: :model
}

RSpec.describe Suit, tags do
  subject(:suit) { build(:suit) }

  it_behaves_like 'nameable'

  describe '.names' do
    subject(:names) { described_class.names }

    it 'is a collection of all suit names' do
      is_expected.to eq(described_class.pluck(:name))
    end
  end
end
