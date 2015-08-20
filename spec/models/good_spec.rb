# == Schema Information
#
# Table name: goods
#
#  id              :integer          not null, primary key
#  cost            :integer
#  name            :string
#  bullet_type     :string
#  bullet_quantity :integer
#  influence       :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'support/models/concerns/buyable_helper'
require 'support/models/concerns/keywordable_helper'
require 'support/models/concerns/nameable_helper'
require 'support/rails/rails_helper'

tags = {
  type: :model
}

RSpec.describe Good, tags do
  it_behaves_like 'buyable'
  it_behaves_like 'keywordable'
  it_behaves_like 'nameable'

  it 'has readonly bullet_bonus' do
    is_expected.to have_readonly_attribute(:bullet_bonus)
  end

  it 'has readonly bullet_type' do
    is_expected.to have_readonly_attribute(:bullet_type)
  end

  it 'has readonly control' do
    is_expected.to have_readonly_attribute(:control)
  end

  it 'has readonly influence' do
    is_expected.to have_readonly_attribute(:influence)
  end

  it 'has readonly name' do
    is_expected.to have_readonly_attribute(:name)
  end

  it 'has readonly text' do
    is_expected.to have_readonly_attribute(:text)
  end

  it 'belongs to a playing card' do
    is_expected.to belong_to(:playing_card)
  end
end
