# == Schema Information
#
# Table name: gangs
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'jsonapi-serializers'

# Standard serializer for Gang records.
class GangSerializer
  include JSONAPI::Serializer

  attribute :name
end
