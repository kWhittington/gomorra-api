# A standard 52-count bicycle deck suit of cards.
class Suit
  def self.name
    fail NotImplementedError,
         "This #{self} has no implementation for: .name"
  end
end
