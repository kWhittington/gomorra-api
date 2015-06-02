# A faction or group certain Gomorra citizens might align themselves with.
# Think classic 'gang', vying for power and control in the town.
class Gang < ActiveRecord::Base
  attr_readonly :name
end
