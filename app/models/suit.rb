# A standard 52-count bicycle deck suit of cards.
class Suit < ActiveRecord::Base
  attr_readonly :name

  validates :name, uniqueness: { case_sensitive: false }
end
