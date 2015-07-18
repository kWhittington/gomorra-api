# A standard 52-count bicycle deck suit of cards.
class Suit
  NAMES = {
    clubs: 'club',
    diamonds: 'diamond',
    hearts: 'heart',
    spades: 'spade'
  }

  attr_reader :name

  def self.exist?(pluralized_name)
    NAMES.key? pluralized_name
  end

  def self.of(pluralized_name)
    unless NAMES.key?(pluralized_name)
      fail "Suit of #{pluralized_name} does not exist"
    end

    new(name: NAMES[pluralized_name])
  end

  private

  def initialize(name:)
    fail 'Cannot create Suit without name' if name.blank?
    @name = name
  end
end
