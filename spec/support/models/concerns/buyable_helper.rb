module BuyableHelper
  RSpec.shared_examples 'buyable' do
    it 'has readonly cost' do
      is_expected.to have_readonly_attribute(:cost)
    end

    it 'validates presence of cost' do
      is_expected.to validate_numericality_of(:cost)
        .only_integer
        .is_greater_than_or_equal_to(0)
    end
  end
end

RSpec.configure do |config|
  config.include BuyableHelper, type: :model
end
