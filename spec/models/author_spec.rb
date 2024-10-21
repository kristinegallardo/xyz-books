require 'rails_helper'

RSpec.describe Author, type: :model do
  describe 'Associations' do
    it { should have_many(:book_authors) }
    it { should have_many(:books).through(:book_authors) }
  end

  describe 'Attributes' do
    subject(:author) { described_class.new }

    it 'has a first_name attribute' do
      expect(author).to respond_to(:first_name)
    end

    it 'has a last_name attribute' do
      expect(author).to respond_to(:last_name)
    end
  end
end
