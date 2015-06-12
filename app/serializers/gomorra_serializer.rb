require 'jsonapi-serializers'

# The super class serializer all other serializer inherit from.
class GomorraSerializer
  include JSONAPI::Serializer
end
