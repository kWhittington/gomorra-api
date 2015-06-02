# Helper module for spec/models/gang_spec.rb
module GangHelper
end

RSpec.configure do |config|
  config.include GangHelper, model: :gang
end
