# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Convert ISBN', type: :request do
  describe 'GET /v1/convert/' do
    context 'with valid ISBN-13' do
      before { get '/convert', params: { isbn: '978-1-60309-454-2', api: true } }

      it { expect(response).to have_http_status(:ok) }
      it { expect(JSON.parse(response.body)['success']).to be_truthy }
      it { expect(JSON.parse(response.body)['converted_value']).to eq '1-60309-454-7' }
    end

    context 'with valid ISBN-10' do
      before { get '/convert', params: { isbn: '1603094547', api: true } }

      it { expect(response).to have_http_status(:ok) }
      it { expect(JSON.parse(response.body)['success']).to be_truthy }
      it { expect(JSON.parse(response.body)['converted_value']).to eq '978-1-60309-454-2' }
    end

    context 'with invalid ISBN' do
      before { get '/convert', params: { isbn: 'invalid', api: true } }

      it { expect(response).to have_http_status(:bad_request) }
      it { expect(JSON.parse(response.body)['message']).to eq 'Invalid ISBN' }
    end
  end
end
