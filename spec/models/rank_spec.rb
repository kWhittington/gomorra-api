require 'support/rails/rails_helper'

tags = {
  type: :model
}

RSpec.describe Rank, tags do
  it 'has readonly name' do
    is_expected.to have_readonly_attribute(:name)
  end

  it 'has readonly value' do
    is_expected.to have_readonly_attribute(:value)
  end
end
