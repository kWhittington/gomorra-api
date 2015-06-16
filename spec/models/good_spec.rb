# == Schema Information
#
# Table name: goods
#
#  id              :integer          not null, primary key
#  cost            :integer
#  name            :string
#  bullet_type     :string
#  bullet_quantity :integer
#  influence       :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'support/rails/rails_helper'

tags = {
  type: :model
}

RSpec.describe Good, tags do
  it 'has readonly name' do
    is_expected.to have_readonly_attribute(:name)
  end
end
