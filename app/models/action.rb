# == Schema Information
#
# Table name: actions
#
#  id         :integer          not null, primary key
#  name       :string
#  text       :string
#  cost       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

# A playable card type in Doomtown. Typically move the game forward.
class Action < ActiveRecord::Base
  include Concerns::Buyable
  include Concerns::Keywordable
  include Concerns::Nameable

  attr_readonly :text

  belongs_to :playing_card

  validates :text, presence: true
  validates :playing_card, presence: true
end
