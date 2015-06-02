require 'jsonapi-serializers'

# Standard serializer for Gang records.
class GangSerializer
  include JSONAPI::Serializer

  attribute :name
end
