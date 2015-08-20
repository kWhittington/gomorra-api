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
require 'support/serializers/gomorra_serializer_helper'

tags = {
  serializer: :gang,
  type: :serializer
}

RSpec.describe GangSerializer, tags do
  subject(:gang_serializer) { described_class.new(gang, options) }
  let(:gang) { instance_double(Gang) }
  let(:options) { Hash.new }

  it 'is a GomorraSerializer' do
    is_expected.to be_a(GomorraSerializer)
  end

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
  end
end
