# == Schema Information
#
# Table name: dudes
#
#  id          :integer          not null, primary key
#  bullet_type :string
#  bullets     :integer
#  control     :integer
#  influence   :integer
#  upkeep      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'support/rails/rails_helper'

tags = {
  type: :model
}

RSpec.describe Dude, tags do
  it 'has readonly bullet_type' do
    is_expected.to have_readonly_attribute(:bullet_type)
  end

  it 'has readonly bullets' do
    is_expected.to have_readonly_attribute(:bullets)
  end

  it 'has readonly cost' do
    is_expected.to have_readonly_attribute(:cost)
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

  it 'has readonly upkeep' do
    is_expected.to have_readonly_attribute(:upkeep)
  end

  it 'belongs to a gang' do
    is_expected.to belong_to(:gang)
  end

  it 'belongs to a playing card' do
    is_expected.to belong_to(:playing_card)
  end
end
