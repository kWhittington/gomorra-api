require 'support/rails/rails_helper'

tags = {
  type: :model
}

RSpec.describe Outfit, tags do
  it 'has readonly name' do
    is_expected.to have_readonly_attribute(:name)
  end

  it 'has readonly production' do
    is_expected.to have_readonly_attribute(:production)
  end

  it 'has readonly text' do
    is_expected.to have_readonly_attribute(:text)
  end

  it 'has readonly treasury' do
    is_expected.to have_readonly_attribute(:treasury)
  end

  it 'belongs to a playing card' do
    is_expected.to belong_to(:playing_card)
  end

  it 'belongs to a gang' do
    is_expected.to belong_to(:gang)
  end
end
