require 'spec_helper'
         
describe BusinessesController do
  describe "GET show" do
    it "sets @business for users" do
      business = Fabricate(:business)
      get :index
      expect(assigns(:businesses).first).to eq(business)
    end
  end

  describe "POST create" do
    it "create the business" do
      post :create, business: Fabricate.attributes_for(:business)
      expect(Business.count).to eq(1)
    end
  end
end