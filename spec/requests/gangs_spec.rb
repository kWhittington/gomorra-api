require 'support/rails/rails_helper'
require 'support/requests/requests_helper'

RSpec.describe 'Gangs', type: :request do
  describe 'GET /gangs' do
    before(:example) { get gangs_path }

    it 'responds with status 200 OK' do
      is_expected.to have_http_status :ok
    end

    it 'responds with body matching a serialized collection of gangs' do
      expect(response.body).to match GangSerializer.serialize(
        Gang.all,
        is_collection: true
      ).to_json
    end
  end

  describe 'GET /gang/:id' do
    before(:example) { get gang_path(gang) }
    let(:gang) { create :gang }

    it 'responds with status 200 OK' do
      is_expected.to have_http_status :ok
    end

    it 'responds with body matching a serialized gang' do
      expect(response.body).to match GangSerializer.serialize(gang).to_json
    end
  end
end
