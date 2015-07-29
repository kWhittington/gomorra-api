module SuitHelper
  RSpec.shared_examples 'a Suit' do
    it 'responds to #name' do
      is_expected.to respond_to(:name)
    end
  end
end

RSpec.configure do |config|
  config.include SuitHelper, model: :suit
end
