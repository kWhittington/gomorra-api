# == Schema Information
#
# Table name: dudes
#
#  id          :integer          not null, primary key
#  bullet_type :string
#  bullets     :integer
#  control     :integer
#  influence   :integer
#  upkeep      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

# A citizen of Gomorra Parish. Some might be more 'aggressive' than others.
class Dude < ActiveRecord::Base
  attr_readonly :bullet_type
  attr_readonly :bullets
  attr_readonly :control
  attr_readonly :influence
  attr_readonly :upkeep
end
