module KeywordableHelper
  RSpec.shared_examples 'keywordable' do
    it 'has readonly keywords' do
      is_expected.to have_readonly_attribute(:keywords)
    end

    it 'validates presence of keywords' do
      is_expected.to validate_presence_of(:keywords)
    end
  end
end

RSpec.configure do |config|
  config.include KeywordableHelper, type: :model
end
