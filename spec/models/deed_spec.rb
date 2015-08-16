# == Schema Information
#
# Table name: deeds
#
#  id         :integer          not null, primary key
#  name       :string
#  cost       :integer
#  production :integer
#  control    :integer
#  keywords   :string
#  text       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'support/models/concerns/buyable_helper'
require 'support/models/concerns/keywordable_helper'
require 'support/rails/rails_helper'

tags = {
  type: :model
}

RSpec.describe Deed, tags do
  it_behaves_like 'buyable'
  it_behaves_like 'keywordable'

  it 'has readonly control' do
    is_expected.to have_readonly_attribute(:control)
  end

  it 'has readonly name' do
    is_expected.to have_readonly_attribute(:name)
  end

  it 'has readonly production' do
    is_expected.to have_readonly_attribute(:production)
  end

  it 'has readonly text' do
    is_expected.to have_readonly_attribute(:text)
  end

  it 'belongs to a playing card' do
    is_expected.to belong_to(:playing_card)
  end
end
