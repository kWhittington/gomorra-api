# == Schema Information
#
# Table name: actions
#
#  id         :integer          not null, primary key
#  name       :string
#  text       :string
#  cost       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'support/models/concerns/buyable_helper'
require 'support/models/concerns/keywordable_helper'
require 'support/models/concerns/nameable_helper'
require 'support/rails/rails_helper'

tags = {
  type: :model
}

RSpec.describe Action, tags do
  subject(:action) { build(:action) }

  it_behaves_like 'buyable'
  it_behaves_like 'keywordable'
  it_behaves_like 'nameable'

  it 'has readonly text' do
    is_expected.to have_readonly_attribute(:text)
  end

  it 'belongs to a playing card' do
    is_expected.to belong_to(:playing_card)
  end

  it 'validates presence of text' do
    is_expected.to validate_presence_of(:text)
  end

  it 'validates presence of playing card' do
    is_expected.to validate_presence_of(:playing_card)
  end
end
