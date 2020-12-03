require 'rails_helper'

RSpec.describe 'Messages API', type: :request do
  let!(:messages) { create_list(:message, 10) }
  let(:message_id) { messages.first.id }

  describe 'GET /messages' do
    
    before { get '/messages' }

    it 'returns messages' do
      expect(response).to have_http_status(:success)
      expect {
        JSON.parse(response.body)
      }.to_not raise_error
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end