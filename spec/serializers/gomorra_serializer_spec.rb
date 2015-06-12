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

  describe '.serialize_collection(collection, options)' do
    subject :serialize_collection do
      described_class.serialize_collection(collection, options)
    end

    let(:collection) { instance_double(Array) }
    let(:options) { instance_double(Hash).as_null_object }

    it 'calls .serialize(collection, options) with the given collection' do
      expect(described_class).to receive(:serialize)
        .with(collection, anything)

      serialize_collection
    end

    it 'calls .serialize(collection, options) with is_collection: true' do
      expect(options).to receive(:merge!).with(is_collection: true)
      expect(described_class).to receive(:serialize)
        .with(anything, options)

      serialize_collection
    end
  end
end
