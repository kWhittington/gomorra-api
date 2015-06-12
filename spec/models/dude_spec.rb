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

require 'support/rails/rails_helper'

RSpec.describe Dude, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
