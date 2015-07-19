# A standard 52-count bicycle deck suit of cards.
class Suit
  attr_reader :name
  private_class_method :new

  def self.of(name)
    new(name: name)
  end

  def initialize(name:)
    @name = name
  end
end
