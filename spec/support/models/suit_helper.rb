module SuitHelper
  RSpec.shared_examples 'a Suit' do
    it 'responds to .name' do
      expect(described_class).to respond_to(:name)
    end
  end
end

RSpec.configure do |config|
  config.include SuitHelper, model: :suit
end
