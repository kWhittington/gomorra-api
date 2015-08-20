require 'support/rails/rails_helper'

tags = {
  type: :routing
}

RSpec.describe OutfitsController, tags do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/outfits').to route_to('outfits#index')
    end

    it 'routes to #show' do
      expect(get: '/outfits/1').to route_to('outfits#show', id: '1')
    end
  end
end
