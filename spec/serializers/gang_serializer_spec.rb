# == Schema Information
#
# Table name: gangs
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'support/rails/rails_helper'
require 'support/serializers/gang_serializer_helper'

tags = {
  serializer: :gang,
  type: :serializer
}

RSpec.describe GangSerializer, tags do
  describe '.serialize(model)' do
    subject(:serialize) { described_class.serialize(model) }
    let(:model) { create :gang }

    it 'has primary data' do
      is_expected.to have_primary_data
    end

    it 'has data type "gangs"' do
      is_expected.to have_primary_data.with_type 'gangs'
    end

    it 'has attribute "name" of the gang name' do
      is_expected.to have_primary_data.with_attribute 'name', model.name
    end

    it 'has a links object for the primary data' do
      is_expected.to have_primary_data.with_link 'self', "/gangs/#{model.id}"
    end

    it 'has no relationships for the primary data' do
      expect(serialize['data']).to have_key 'relationships'
      expect(serialize['data']['relationships']).to be_empty
    end
  end
end
