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

  it 'has readonly control' do
    is_expected.to have_readonly_attribute(:control)
  end

  it 'has readonly influence' do
    is_expected.to have_readonly_attribute(:influence)
  end

  it 'has readonly upkeep' do
    is_expected.to have_readonly_attribute(:upkeep)
  end
end
