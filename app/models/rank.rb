# A tier system for comparing values. The larger value wins.
class Rank < ActiveRecord::Base
  attr_readonly :name
  attr_readonly :value

  has_many :playing_cards
end
