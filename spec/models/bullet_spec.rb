require 'support/rails/rails_helper'

tags = {
  type: :model
}

RSpec.describe Bullet, tags do
  it 'has readonly cartridge' do
    is_expected.to have_readonly_attribute(:cartridge)
  end

  it 'has readonly quantity' do
    is_expected.to have_readonly_attribute(:quantity)
  end

  it 'validates presence of cartridge' do
    is_expected.to validate_presence_of(:cartridge)
  end

  it 'validates presence of quantity' do
    is_expected.to validate_presence_of(:quantity)
  end

  it 'validates cartridge is included in CARTRIDGES' do
    is_expected.to validate_inclusion_of(:cartridge)
      .in_array(%w(draw stud))
  end

  it 'validates quantity is included in QUANTITIES' do
    is_expected.to validate_inclusion_of(:quantity)
      .in_array(%w(? 0 1 2 3 4 5))
  end
end
