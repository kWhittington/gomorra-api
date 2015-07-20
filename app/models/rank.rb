# A tier system for comparing values. The larger value wins.
class Rank
  include Singleton

  def name
    self.class.to_s.downcase
  end

  def value
    fail NotImplementedError,
         "This #{self.class} has no implementation for: #value"
  end
end
