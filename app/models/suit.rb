# A standard 52-count bicycle deck suit of cards.
class Suit
  def name
    fail NotImplementedError,
         "This #{self.class} has no implementation for: #name"
  end
end
