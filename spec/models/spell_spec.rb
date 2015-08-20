require 'support/models/concerns/buyable_helper'
require 'support/models/concerns/keywordable_helper'
require 'support/models/concerns/nameable_helper'
require 'support/rails/rails_helper'

tags = {
  type: :model
}

RSpec.describe Spell, tags do
  it_behaves_like 'buyable'
  it_behaves_like 'keywordable'
  it_behaves_like 'nameable'

  it 'has a readonly text' do
    is_expected.to have_readonly_attribute(:text)
  end

  it 'belongs to a playing card' do
    is_expected.to belong_to(:playing_card)
  end
end
