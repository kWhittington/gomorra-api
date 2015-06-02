require 'support/rails/rails_helper'

tags = {
  routing: :gang,
  type: :routing
}

RSpec.describe 'Gang routes', tags do
  describe 'routing' do
    it 'routes to #index' do
      expect(get '/gangs').to route_to('gangs#index')
    end

    it 'routes to #show' do
      expect(get '/gangs/1').to route_to('gangs#show', id: '1')
    end
  end
end
