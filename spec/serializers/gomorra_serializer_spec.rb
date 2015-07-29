require 'support/rails/rails_helper'
require 'support/serializers/gomorra_serializer_helper'

tags = {
  serializer: :gomorra,
  type: :serializer
}

RSpec.describe GomorraSerializer, tags do
  subject(:gomorra_serializer) { described_class.new(object) }
  let(:object) { double('object') }

  it 'is a JSONAPI::Serializer' do
    is_expected.to be_a(JSONAPI::Serializer)
  end

  describe '.some(collection, options = {})' do
    context 'when provided no options' do
      subject(:some) { described_class.some(collection) }
      let(:collection) { [] }

      it 'is .serialize(collection, is_collection: true)' do
        serialize = described_class.serialize(collection, is_collection: true)
        is_expected.to eq(serialize)
      end
    end
  end

  describe '.one(object, options = {})' do
    context 'when provided no options' do
      subject(:one) { described_class.one(object) }
      # @todo replace with dynamic data.
      let(:object) { Gang.first }

      it 'is .serialize(object)' do
        is_expected.to eq(described_class.serialize(object))
      end
    end
  end
end
