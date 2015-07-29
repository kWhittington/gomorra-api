require 'support/models/suit_helper'
require 'support/rails/rails_helper'

module Suits
  tags = {
    model: :suit,
    type: :model
  }

  RSpec.describe Clubs, tags do
    it_behaves_like 'a Suit'
  end
end
