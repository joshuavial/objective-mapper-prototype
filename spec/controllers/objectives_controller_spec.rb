require 'rails_helper'

RSpec.describe ObjectivesController, type: :controller do

  describe "GET #all" do
    it "returns http success" do
      get :all
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #community" do
    it "returns http success" do
      get :community
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #pod" do
    it "returns http success" do
      get :pod
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #people" do
    it "returns http success" do
      get :people
      expect(response).to have_http_status(:success)
    end
  end

end
