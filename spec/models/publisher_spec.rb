require 'rails_helper'

RSpec.describe Publisher, type: :model do
  describe 'Associations' do
    it { should have_many(:books) }
  end

  describe 'Attributes' do
    subject(:publisher) { described_class.new }

    it 'has a name attribute' do
      expect(publisher).to respond_to(:name)
    end
  end
end
