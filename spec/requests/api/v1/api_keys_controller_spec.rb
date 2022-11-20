# frozen_string_literal: true
require "rails_helper"
require "constants"

RSpec.describe(Api::V1::ApiKeysController, type: :request) do
  
  describe "CREATE #create api_keys" do
    before do
      params = {
        email: "julianallenderussek@gmail.com", 
        password: "12345678"
      }
      post "/api_keys", params: params.to_json, headers: RspecConstants.headers()
    end
    it "returns http success" do 
      expect(response).to(have_http_status(:success))
      expect(JSON.parse(response.body)["success"]).to be(true)
    end
  end

 end