require 'support/rails/rails_helper'

tags = {
  type: :request
}

RSpec.describe 'Spells', tags do
  describe 'GET /spells' do
    it 'works! (now write some real specs)' do
      get spells_path
      expect(response).to have_http_status(200)
    end
  end
end
