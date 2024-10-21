require 'rails_helper'

RSpec.describe Book, type: :model do
  describe 'Associations' do
    it { should have_many(:book_authors) }
    it { should have_many(:authors).through(:book_authors) }
  end

  describe 'Attributes' do
    subject(:book) { described_class.new }

    it 'has a title attribute' do
      expect(book).to respond_to(:title)
    end

    it 'has a isbn_13 attribute' do
      expect(book).to respond_to(:isbn_13)
    end

    it 'has a price attribute' do
        expect(book).to respond_to(:price)
    end

		it 'has a publication_year attribute' do
			expect(book).to respond_to(:publication_year)
		end

		it 'has a publisher_id attribute' do
			expect(book).to respond_to(:publisher_id)
		end
  end
end
