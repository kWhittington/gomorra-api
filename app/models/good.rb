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
  include Concerns::Buyable
  include Concerns::Keywordable

  attr_readonly :bullet_bonus
  attr_readonly :bullet_type
  attr_readonly :control
  attr_readonly :influence
  attr_readonly :name
  attr_readonly :text

  belongs_to :playing_card
end
