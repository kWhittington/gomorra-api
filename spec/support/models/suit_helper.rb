module SuitHelper
end

RSpec.configure do |config|
  config.include SuitHelper, model: :suit
end
