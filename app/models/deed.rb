# == Schema Information
#
# Table name: deeds
#
#  id         :integer          not null, primary key
#  name       :string
#  cost       :integer
#  production :integer
#  control    :integer
#  keywords   :string
#  text       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

# A property in Gomorra Parish. It can generate control, production, usually a
# trait, and maybe an action.
class Deed < ActiveRecord::Base
  attr_readonly :cost
  attr_readonly :name
  attr_readonly :production
end
