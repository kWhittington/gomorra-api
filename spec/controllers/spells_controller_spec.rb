require 'support/rails/rails_helper'

tags = {
  type: :controller
}

RSpec.describe SpellsController, tags do

  # This should return the minimal set of attributes required to create a valid
  # Spell. As you add validations to Spell, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # SpellsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all spells as @spells" do
      spell = Spell.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:spells)).to eq([spell])
    end
  end

  describe "GET #show" do
    it "assigns the requested spell as @spell" do
      spell = Spell.create! valid_attributes
      get :show, {:id => spell.to_param}, valid_session
      expect(assigns(:spell)).to eq(spell)
    end
  end
end
