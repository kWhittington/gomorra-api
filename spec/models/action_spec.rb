# == Schema Information
#
# Table name: actions
#
#  id         :integer          not null, primary key
#  name       :string
#  text       :string
#  cost       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'support/rails/rails_helper'

tags = {
  type: :model
}

RSpec.describe Action, tags do
  it 'has readonly cost' do
    is_expected.to have_readonly_attribute(:cost)
  end

  it 'has readonly name' do
    is_expected.to have_readonly_attribute(:name)
  end

  it 'has readonly text' do
    is_expected.to have_readonly_attribute(:text)
  end
end
