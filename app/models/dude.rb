# == Schema Information
#
# Table name: dudes
#
#  id              :integer          not null, primary key
#  name            :string
#  bullet_type     :string
#  bullet_quantity :integer
#  influence       :integer
#  control         :integer
#  upkeep          :integer
#  cost            :integer
#  keywords        :string
#  text            :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

# A citizen of Gomorra Parish. Some might be more 'aggressive' than others.
class Dude < ActiveRecord::Base
  attr_readonly :bullet_quantity
  attr_readonly :bullet_type
  attr_readonly :control
  attr_readonly :influence
  attr_readonly :name
  attr_readonly :upkeep
end
