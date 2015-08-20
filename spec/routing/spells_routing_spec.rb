require 'support/rails/rails_helper'

tags = {
  type: :routing
}

RSpec.describe SpellsController, tags do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/spells').to route_to('spells#index')
    end

    it 'routes to #show' do
      expect(get: '/spells/1').to route_to('spells#show', id: '1')
    end
  end
end
