# A standard 52-count bicycle deck suit of cards.
class Suit
  NAMES = {
    clubs: 'club',
    diamonds: 'diamond',
    hearts: 'heart',
    spades: 'spade'
  }

  def self.of(pluralized_name)
    unless SUIT_NAMES.key?(pluralized_name)
      fail 'Suit of #{pluralized_name} does not exist'
    end

    new(name: SUIT_NAMES[pluralized_name])
  end

  attr_reader :name

  def initialize(name:)
    fail 'Cannot create Suit without name' if name.blank?
    @name = name
  end
end
