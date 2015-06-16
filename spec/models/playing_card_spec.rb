# == Schema Information
#
# Table name: playing_cards
#
#  id         :integer          not null, primary key
#  suit       :string
#  rank       :string
#  value      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'support/rails/rails_helper'

tags = {
  type: :model
}

RSpec.describe PlayingCard, tags do
  it 'has readonly rank' do
    is_expected.to have_readonly_attribute(:rank)
  end

  it 'has readonly suit' do
    is_expected.to have_readonly_attribute(:suit)
  end

  it 'has readonly value' do
    is_expected.to have_readonly_attribute(:value)
  end
end
