class Spell < ActiveRecord::Base
  include Concerns::Buyable
  include Concerns::Keywordable
  include Concerns::Nameable

  attr_readonly :text

  belongs_to :playing_card
end
