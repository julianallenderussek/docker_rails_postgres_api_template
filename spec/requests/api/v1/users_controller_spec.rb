# frozen_string_literal: true
require "rails_helper"
require "constants"

RSpec.describe(Api::V1::UsersController, type: :request) do
  
  describe "GET #index users" do
    before do
      get "/users", headers: RspecConstants.headers()
    end
    it "returns http success" do 
      expect(response).to(have_http_status(:success))
      expect(JSON.parse(response.body)["success"]).to be(true)
    end
  end

 end