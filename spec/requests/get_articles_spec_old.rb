require 'rails_helper'
describe "get all articles route", :type => :request do
  let!(:articles) {FactoryBot.create_list(:random_articles, 20)}
before {get '/api/v1/articles'}
it 'returns all articles' do
    expect(JSON.parse(response.body).size).to eq(20)
  end
it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
