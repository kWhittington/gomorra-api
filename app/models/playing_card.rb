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

# A card in a standard 52-count bicycle deck.
class PlayingCard < ActiveRecord::Base
  belongs_to :rank
  belongs_to :suit
end
