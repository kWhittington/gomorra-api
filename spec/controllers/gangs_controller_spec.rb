require 'support/rails/rails_helper'

tags = {
  controller: :gangs,
  type: :controller
}

RSpec.describe GangsController, tags do
  describe 'GET #index' do
    let(:action) { get :index }

    it 'serializes all gangs' do
      expect(controller).to receive(:render)
        .with(json: GangSerializer.serialize(Gang.all, is_collection: true))
      action
    end
  end

  describe 'GET #show' do
    subject(:action) { get :show, params }
    let(:params) { { id: gang.id } }
    let(:gang) { create :gang }

    pending 'what happens when no gang found with id'

    it 'serializes the gang whose id was provided' do
      expect(controller).to receive(:render)
        .with(json: GangSerializer.serialize(gang))
      action
    end
  end
end
