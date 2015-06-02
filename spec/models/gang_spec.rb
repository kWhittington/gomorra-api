require 'support/rails/rails_helper'

tags = {
  model: :gang,
  type: :model
}

RSpec.describe Gang, tags do
  it 'has readonly name' do
    is_expected.to have_readonly_attribute :name
  end
end
