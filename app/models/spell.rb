class Spell < ActiveRecord::Base
  include Concerns::Keywordable

  attr_readonly :cost
  attr_readonly :name
  attr_readonly :text

  belongs_to :playing_card
end
