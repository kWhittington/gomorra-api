require 'rank'

module Ranks
  # The lowest rank possible.
  class MissingRank < Rank
    def self.value
      0
    end
  end
end
