require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks in an array' do
    bookmark_1 = Bookmark.create(url: 'http://google.com')
    bookmark_2 = Bookmark.create(url: 'http://amazon.co.uk')
    bookmark_3 = Bookmark.create(url: 'http://makersacademy.com')

      expected_bookmarks = [
        bookmark_1,
        bookmark_2,
        bookmark_3
      ]

      expect(Bookmark.all).to eq expected_bookmarks
    end
  end

  describe '.create' do
    it 'creates a new bookmark' do
      bookmark = Bookmark.create(url: 'http://www.testbookmark.com')
      expect(Bookmark.all).to include bookmark
    end

    it 'does not create a new bookmark if the URL is not valid' do
      bookmark = Bookmark.create(url: 'not a url bookmark')
      expect(Bookmark.all).not_to include bookmark
    end
  end

  describe '#==' do
    it 'two Bookmarks are equal if their IDs match' do
      bookmark1 = Bookmark.new(1, url: 'http://testbookmark.com')
      bookmark2 = Bookmark.new(1, url: 'http://testbookmark.com')

      expect(bookmark1).to eq bookmark2
    end
  end
end
