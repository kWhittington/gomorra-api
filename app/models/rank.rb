# A tier system for comparing values. The larger value wins.
class Rank
  def value
    fail NotImplementedError,
         "This #{self.class} has no implementation for: #value"
  end
end
