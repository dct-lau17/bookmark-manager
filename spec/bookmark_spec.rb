require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks in an array' do
      Bookmark.create(url: 'http://google.com')
      Bookmark.create(url: 'http://amazon.co.uk')
      Bookmark.create(url: 'http://makersacademy.com')

      expected_bookmarks = [
        'http://google.com',
        'http://amazon.co.uk',
        'http://makersacademy.com'
      ]

      expect(Bookmark.all).to eq expected_bookmarks
    end
  end

  describe '.create' do
    it 'creates a new bookmark' do
      Bookmark.create(url: 'http://www.testbookmark.com')
      expect(Bookmark.all).to include 'http://www.testbookmark.com'
    end

    it 'does not create a new bookmark if the URL is not valid' do
      Bookmark.create(url: 'not a url bookmark')
      expect(Bookmark.all).not_to include 'not a url bookmark'
    end
  end
end
