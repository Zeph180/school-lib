require 'rspec'
require_relative '../book'

describe Book do
  let(:book) { Book.new('Pride and Prejudice', 'Jane Austen') }

  describe '#initialize' do
    it 'creates a book with a title and an author' do
      expect(book.title).to eq('Pride and Prejudice')
      expect(book.author).to eq('Jane Austen')
    end

    it 'generates an id for the book' do
      expect(book.id).not_to be_nil
    end
  end

  describe '#to_h' do
    it 'returns a hash representation of the book' do
      expected_hash = {
        id: book.id,
        title: book.title,
        author: book.author,
        rentals: []
      }
      expect(book.to_h).to eq(expected_hash)
    end
  end
end
