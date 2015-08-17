require 'support/models/concerns/weaponized_helper'
require 'support/rails/rails_helper'

module Concerns
  tags = {
    type: :model
  }

  RSpec.describe Weaponized, tags do
    it 'is a concern' do
      is_expected.to be_an(ActiveSupport::Concern)
    end
  end
end
