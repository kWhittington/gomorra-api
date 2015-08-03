# A card in a standard 52-count bicycle deck.
class PlayingCard < ActiveRecord::Base
  belongs_to :rank
  belongs_to :suit

  validates :rank_id,
    uniqueness: {
      message: 'there can only be one rank of each suit',
      scope: :suit_id
    }

  validates_associated :rank
  validates_associated :suit
end
