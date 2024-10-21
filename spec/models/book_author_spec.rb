require 'rails_helper'

RSpec.describe BookAuthor, type: :model do
  describe 'Associations' do
    it { should belong_to :book }
    it { should belong_to :author }
  end

  describe 'Attributes' do
    subject(:book_author) { described_class.new }

    it 'has a book_id attribute' do
      expect(book_author).to respond_to(:book_id)
    end

    it 'has a author_id attribute' do
      expect(book_author).to respond_to(:author_id)
    end
  end
end
