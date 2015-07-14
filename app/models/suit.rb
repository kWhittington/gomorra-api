# A standard 52-count bicycle deck suit of cards.
class Suit < ActiveRecord::Base
  NAMES = %w(club diamond heart spade)

  attr_readonly :name

  has_many :playing_cards
end
