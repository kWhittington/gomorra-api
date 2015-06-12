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

  describe '.pluralize(collection, options = {})' do
    context 'when provided no options' do
      subject(:pluralize) { described_class.pluralize(collection) }
      let(:collection) { [] }

      it 'is .serialize(collection, is_collection: true)' do
        serialize = described_class.serialize(collection, is_collection: true)
        is_expected.to eq(serialize)
      end
    end
  end
end
