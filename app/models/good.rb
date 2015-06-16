# == Schema Information
#
# Table name: goods
#
#  id              :integer          not null, primary key
#  cost            :integer
#  name            :string
#  bullet_type     :string
#  bullet_quantity :integer
#  influence       :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

# An item, spell, sidekick, or weapon a dude can be equipped with.
class Good < ActiveRecord::Base
  attr_readonly :bullet_quantity
  attr_readonly :bullet_type
  attr_readonly :cost
  attr_readonly :name
end
