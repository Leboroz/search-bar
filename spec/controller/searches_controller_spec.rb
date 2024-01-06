require 'rails_helper'

RSpec.describe SearchesController, type: :controller do
  describe 'GET #index' do
    let!(:searches) { create_list(:search, 10) }

    context 'should render the Searches#index template with 10 articles' do
      it 'success' do
        get(:index)

        expect(response.status).to eq(200)
      end
    end
  end

  describe 'POST #create' do
    context 'should save 1 search' do
      it 'success' do
        post(:create, params: { quantity: 1, content: 'my' })
        post(:create, params: { quantity: 1, content: 'my name' })
        post(:create, params: { quantity: 1, content: 'my name is leo' })

        json_response = JSON.parse(response.body)

        expect(response.status).to eq(200)
        expect(json_response['content']).to eq('my name is leo')
        expect(Search.all).to have_attributes(size: 1)
      end
    end
  end
end
