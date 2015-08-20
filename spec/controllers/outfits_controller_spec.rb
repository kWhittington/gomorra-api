require 'support/rails/rails_helper'

tags = {
  type: :controller
}

RSpec.describe OutfitsController, tags do

  # This should return the minimal set of attributes required to create a valid
  # Outfit. As you add validations to Outfit, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # OutfitsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all outfits as @outfits" do
      outfit = Outfit.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:outfits)).to eq([outfit])
    end
  end

  describe "GET #show" do
    it "assigns the requested outfit as @outfit" do
      outfit = Outfit.create! valid_attributes
      get :show, {:id => outfit.to_param}, valid_session
      expect(assigns(:outfit)).to eq(outfit)
    end
  end
end
