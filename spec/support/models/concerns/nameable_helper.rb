module NameableHelper
  RSpec.shared_examples 'nameable' do
    it 'has readonly name' do
      is_expected.to have_readonly_attribute(:name)
    end

    it 'validates presence of name' do
      is_expected.to validate_presence_of(:name)
    end
  end
end

RSpec.configure do |config|
  config.include NameableHelper, type: :model
end
