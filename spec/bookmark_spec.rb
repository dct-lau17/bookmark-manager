require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks in an array' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      # Add test data
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://google.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://amazon.co.uk');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://makersacademy.com');")

      expected_bookmarks = [
        'http://google.com',
        'http://amazon.co.uk',
        'http://makersacademy.com'
      ]

      expect(Bookmark.all).to eq expected_bookmarks

    end
  end
end
