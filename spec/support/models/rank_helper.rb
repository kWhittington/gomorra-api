module RankHelper
  RSpec.shared_examples 'a Rank' do
    it 'responds to .value' do
      expect(described_class).to respond_to(:value)
    end
  end
end

RSpec.configure do |config|
  config.include RankHelper, model: :rank
end
