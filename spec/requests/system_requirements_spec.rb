require 'rails_helper'

RSpec.describe "SystemRequirements", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/system_requirements/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/system_requirements/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/system_requirements/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/system_requirements/edit"
      expect(response).to have_http_status(:success)
    end
  end

end
