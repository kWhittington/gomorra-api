# A standard 52-count bicycle deck suit of cards.
class Suit < ActiveRecord::Base
  attr_readonly :name
end