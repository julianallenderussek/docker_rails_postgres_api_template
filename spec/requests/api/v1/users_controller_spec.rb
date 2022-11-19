# frozen_string_literal: true
require "rails_helper"

headers = {
  'Content-Type':'application/json',
  'X-Platform': '',
  'Accept': 'application/vnd.dai_musica.v1+json',
  'Access-Control-Allow-Origin': '*'
 }

RSpec.describe(Api::V1::UsersController, type: :request) do
#   let(:superadmin) { create(:authenticated_user) }
#   let(:headers) { headers_for(client: :dashboard, session_token: superadmin.session_tokens.first) }
#   let(:reimbursement) { create(:reimbursement) }
    let(:headers) { headers_for(client: :dashboard) }
    # let(:school) { create(:school) }
    # let(:profesor1) { create(:profesor, school_id: school.id) }
    # let(:profesor2) { create(:profesor, school_id: school.id) }

  describe "GET #index users" do
    before do
      get "/users", headers: headers
    end
    it "returns http success" do 
      expect(response).to(have_http_status(:success))
      expect(JSON.parse(response.body)["success"]).to be(true)
    end
  end
 end