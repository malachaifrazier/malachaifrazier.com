require 'rails_helper'

RSpec.describe Book, type: :model do
  let(:book) { create(:book) }

  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should_not validate_presence_of(:link) }
    it { should validate_presence_of(:category) }
    it { should validate_presence_of(:author) }
  end

  describe 'title_and_author' do
    it 'returns the title and author' do
      expect(book.title_and_author).to eq("#{book.title} by #{book.author}")
    end
  end
end

# Path: spec/factories/books.rb