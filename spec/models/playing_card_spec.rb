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
  it 'belongs to a rank' do
    is_expected.to belong_to(:rank)
  end

  it 'belongs to a suit' do
    is_expected.to belong_to(:suit)
  end
end
