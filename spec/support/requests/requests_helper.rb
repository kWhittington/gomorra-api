# Helper module for spec/requests/*
module RequestHelper
  RSpec.shared_context 'it got a response', type: :request do
    subject { response }
    let(:json) { JSON.parse(response.body) }
    let(:primary_data) { json[:data] }
  end
end
