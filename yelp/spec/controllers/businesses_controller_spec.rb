require 'spec_helper'
         
describe BusinessesController do
  describe "GET show" do
    it "sets @business for users" do
      business = Fabricate(:business)
      get :index
      expect(assigns(:businesses).first).to eq(business)
    end
  end
end