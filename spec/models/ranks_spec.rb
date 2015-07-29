require 'support/rails/rails_helper'

tags = {
  model: :ranks,
  type: :model
}

RSpec.describe Ranks, tags do
  it 'responds to .[]' do
    is_expected.to respond_to(:[])
  end
end
