# A card in a standard 52-count bicycle deck.
class PlayingCard < ActiveRecord::Base
  belongs_to :rank
  belongs_to :suit
end
