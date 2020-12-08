# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Messages API', type: :request do
  let!(:messages) { create_list(:message, 10) }
  let(:message_id) { messages.first.id }

  describe 'GET /messages' do
    before { get '/messages' }

    it 'returns messages' do
      expect(response).to have_http_status(:success)
      expect do
        JSON.parse(response.body)
      end.to_not raise_error
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /messages/:id' do
    before { get "/messages/#{message_id}" }

    context 'when the record exists' do
      it 'returns the message' do
        expect(response).to have_http_status(:success)
        expect do
          JSON.parse(response.body)
        end.to_not raise_error
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end
  end

  describe 'POST /messages' do
    context 'when the request is valid' do
      before { post '/messages' }

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end
  end
end
