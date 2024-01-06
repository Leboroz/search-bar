require 'rails_helper'
RSpec.describe AnalyticsController, type: :controller do
  describe 'GET #index' do
    let!(:searches) { create_list(:search, 10) }

    context 'should render analytics with 10 searches' do
      it 'success' do
        get(:index)

        expect(response.status).to eq(200)
        expect(response).to render_template(:index)
      end
    end
  end
end
