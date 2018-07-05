require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks in an array' do
    bookmark_1 = Bookmark.create(url: 'http://google.com', title: "Google")
    bookmark_2 = Bookmark.create(url: 'http://amazon.co.uk', title: "Amazon")
    bookmark_3 = Bookmark.create(url: 'http://makersacademy.com', title: "Makers")

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
      bookmark = Bookmark.create(url: 'http://www.testbookmark.com', title: 'test')
      expect(Bookmark.all).to include bookmark
    end

    it 'does not create a new bookmark if the URL is not valid' do
      bookmark = Bookmark.create(url: 'not a url bookmark', title: 'not a bookmark')
      expect(Bookmark.all).not_to include bookmark
    end
  end

  describe '#==' do
    it 'two Bookmarks are equal if their IDs match' do
      bookmark1 = Bookmark.new(1, 'http://testbookmark.com', 'test')
      bookmark2 = Bookmark.new(1, 'http://testbookmark.com', 'test')

      expect(bookmark1).to eq bookmark2
    end
  end
end
