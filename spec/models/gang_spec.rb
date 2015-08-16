# == Schema Information
#
# Table name: gangs
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'support/models/concerns/nameable_helper'
require 'support/rails/rails_helper'

tags = {
  model: :gang,
  type: :model
}

RSpec.describe Gang, tags do
  subject(:gang) { build(:gang) }

  it_behaves_like 'nameable'
end
