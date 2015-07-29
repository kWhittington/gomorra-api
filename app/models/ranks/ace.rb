require 'rank'

module Ranks
  # The lowest rank possible.
  class Ace < Rank
    def value
      1
    end
  end
end
