require 'jsonapi-serializers'

# The super class serializer all other serializer inherit from.
class GomorraSerializer
  include JSONAPI::Serializer

  def self.pluralize(collection, options = {})
    options.merge!(is_collection: true)
    serialize(collection, options)
  end
end
