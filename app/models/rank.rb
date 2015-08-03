# A tier system for comparing values. The larger value wins.
class Rank < ActiveRecord::Base
  attr_readonly :name
  attr_readonly :value

  validates :name,
    presence: true,
    uniqueness: { case_sensitive: false }
  validates :value,
    presence: true,
    uniqueness: true
end
