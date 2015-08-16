class Spell < ActiveRecord::Base
  include Concerns::Buyable
  include Concerns::Keywordable

  attr_readonly :name
  attr_readonly :text

  belongs_to :playing_card
end
