describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      bookmarks = Bookmark.all

      expect(bookmarks).to include "http://makersacademy.com"
      expect(bookmarks).to include "http://amazon.co.uk"
      expect(bookmarks).to include "http://google.com"
    end
  end
end
