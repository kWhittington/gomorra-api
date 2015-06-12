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
end
