# == Schema Information
#
# Table name: suits
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

# A standard 52-count bicycle deck suit of cards.
class Suit < ActiveRecord::Base
  include Concerns::Nameable

  def self.names
    pluck(:name)
  end
end
