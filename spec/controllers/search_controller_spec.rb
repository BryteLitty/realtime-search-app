require 'rails_helper'

RSpec.describe SearchController, type: :controller do
  describe 'GET #index' do
    it 'renders the index template' do
      get :index
      expect(response).to render_template(:index)
    end
  end

  describe 'POST #create' do
    it 'redirects to index after search' do
      post :create, params: { query: 'search_term' }
      expect(response).to redirect_to(search_index_path)
    end

    it 'creates a search record' do
      expect {
        post :create, params: { query: 'search_term' }
      }.to change(Search, :count).by(1)
    end
  end
end
