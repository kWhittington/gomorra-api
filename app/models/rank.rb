# A tier system for comparing values. The larger value wins.
class Rank
  def self.value
    fail NotImplementedError,
         "This #{self} has no implementation for: .value"
  end
end
