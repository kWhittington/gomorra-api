require 'support/rails/rails_helper'

tags = {
  type: :request
}

RSpec.describe 'Outfits', tags do
  describe 'GET /outfits' do
    it 'works! (now write some real specs)' do
      get outfits_path
      expect(response).to have_http_status(200)
    end
  end
end
