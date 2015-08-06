# == Schema Information
#
# Table name: gangs
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'support/rails/rails_helper'

tags = {
  model: :gang,
  type: :model
}

RSpec.describe Gang, tags do
  subject(:gang) { build(:gang) }

  it 'has readonly name' do
    is_expected.to have_readonly_attribute :name
  end

  it 'validates presence of name' do
    is_expected.to validate_presence_of(:name)
  end

  it 'validates uniqueness, case insensitive, of name' do
    is_expected.to validate_uniqueness_of(:name)
      .case_insensitive
  end
end
