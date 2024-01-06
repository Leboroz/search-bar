require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
  describe 'GET #index' do
    let!(:articles) { create_list(:article, 10) }

    context 'should render the Article#index template with 10 articles' do
      it 'success' do
        get(:index)

        expect(response.status).to eq(200)
        expect(response).to render_template(:index)
      end
    end
  end
end
