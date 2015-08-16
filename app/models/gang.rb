# == Schema Information
#
# Table name: gangs
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

# A faction or group certain Gomorra citizens might align themselves with.
# Think classic 'gang', vying for power and control in the town.
class Gang < ActiveRecord::Base
  include Concerns::Nameable
end
