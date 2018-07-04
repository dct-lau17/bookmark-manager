feature 'Viewing bookmarks' do
  scenario 'A user can see bookmarks' do
    Bookmark.create(url: 'http://google.com')
    Bookmark.create(url: 'http://amazon.co.uk')
    Bookmark.create(url: 'http://makersacademy.com')


    visit('/bookmarks')
    expect(page).to have_content 'http://google.com'
    expect(page).to have_content 'http://amazon.co.uk'
    expect(page).to have_content 'http://makersacademy.com'
  end

end
