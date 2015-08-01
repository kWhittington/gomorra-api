# A tier system for comparing values. The larger value wins.
class Rank < ActiveRecord::Base
  attr_readonly :name
  attr_readonly :value

  validates :name, uniqueness: { case_sensitive: false }
  validates :value, uniqueness: true
end
