# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Search ISBN', type: :request do
  let!(:publisher) { create(:publisher) }
  let!(:book) { create(:book, title: 'Book 1', publisher_id: publisher.id, isbn_13: '978-1-60309-454-2') }
  let!(:author) { create(:author) }
  let!(:book_author) { create(:book_author, book: book, author: author) }

  describe 'GET /v1/search/:id' do
    context 'with valid ISBN-13' do
      before { get '/search', params: { isbn: book.isbn_13, api: true } }

      it { expect(response).to have_http_status(:ok) }
      it { expect(JSON.parse(response.body)['success']).to be_truthy }
      it { expect(JSON.parse(response.body)['data']['isbn_13']).to eq '978-1-60309-454-2' }
    end

    context 'with invalid ISBN' do
      before { get '/search', params: { isbn: 'invalid-isbn', api: true } }

      it { expect(response).to have_http_status(:bad_request) }
      it { expect(JSON.parse(response.body)['message']).to eq 'Invalid ISBN' }
    end

    context 'with valid ISBN-10' do
      before { get '/search', params: { isbn: '1603094547', api: true } }

      it { expect(response).to have_http_status(:ok) }
      it { expect(JSON.parse(response.body)['success']).to be_truthy }
      it { expect(JSON.parse(response.body)['data']['isbn_13']).to eq '978-1-60309-454-2' }
    end

    context 'with valid ISBN-13 but is not saved in database' do
      before { get '/search', params: { isbn: '978-1-56619-909-4', api: true } }

      it { expect(response).to have_http_status(:not_found) }
      it { expect(JSON.parse(response.body)['message']).to eq 'Record not found in database' }
    end
  end
end
