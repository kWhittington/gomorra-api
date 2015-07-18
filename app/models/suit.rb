# A standard 52-count bicycle deck suit of cards.
class Suit < ActiveRecord::Base
  attr_readonly :name

  has_many :playing_cards

  validates :name, inclusion: { in: NAMES }
end
