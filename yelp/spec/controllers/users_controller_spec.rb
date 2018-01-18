require 'spec_helper'

describe UsersController do
  describe "GET new" do
    it "sets @user" do
      get :new 
      expect(assigns(:user)).to be_instance_of(User)
    end
  end

  describe "POST create" do
    it "creates the user" do
      post :create, user: Fabricate.attributes_for(:user)
      expect(User.count).to eq(1)
    end

    it "redirects to the sign in page" do
      post :create, user: Fabricate.attributes_for(:user)
      expect(response).to redirect_to sign_in_path
    end
  end


end