# Helper module for spec/serializers/gang_serializer_spec.rb
module GangSerializerHelper
  RSpec::Matchers.define :have_primary_data do
    match do |serialization|
      has_data_key = serialization.key?('data')
      chain_condition =
        if type
          serialization['data']['type'].eql? type
        elsif attribute
          serialization['data']['attributes'][attribute].eql? value
        elsif link
          serialization['data']['links'][link].eql? value
        else
          true
        end

      has_data_key && chain_condition
    end

    chain :with_type, :type
    chain :with_attribute, :attribute, :value
    chain :with_link, :link, :value
  end
end
