# The type and strength of a shooter in Doomtown.
class Bullet < ActiveRecord::Base
  CARTRIDGES = %w(draw stud)
  QUANTITIES = %w(? 0 1 2 3 4 5)

  attr_readonly :cartridge
  attr_readonly :quantity

  validates :cartridge,
            inclusion: { in: CARTRIDGES },
            presence: true
  validates :quantity,
            inclusion: { in: QUANTITIES },
            presence: true
end
