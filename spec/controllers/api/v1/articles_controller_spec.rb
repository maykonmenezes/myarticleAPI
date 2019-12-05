require 'rails_helper'

RSpec.describe Api::V1::ArticlesController do
  describe "GET #index" do
    before do
      get :index
    end

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it 'returns all articles' do
      expect(JSON.parse(response.body).size).to eq(50)
    end
  end
end
