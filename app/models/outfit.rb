class Outfit < ActiveRecord::Base
  attr_readonly :name
  attr_readonly :production
  attr_readonly :text
  attr_readonly :treasury

  belongs_to :playing_card
  belongs_to :gang
end
