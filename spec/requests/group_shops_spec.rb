require 'rails_helper'

RSpec.describe 'GroupShops', type: :request do
  describe 'GET /new' do
    it 'returns http success' do
      get '/group_shops/new'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /create' do
    it 'returns http success' do
      get '/group_shops/create'
      expect(response).to have_http_status(:success)
    end
  end
end
