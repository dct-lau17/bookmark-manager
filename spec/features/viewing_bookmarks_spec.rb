feature 'Viewing bookmarks' do
  scenario 'A user can see bookmarks' do
    Bookmark.create(url: 'http://google.com', title: "Google")
    Bookmark.create(url: 'http://amazon.co.uk', title: "Amazon")
    Bookmark.create(url: 'http://makersacademy.com', title: "Makers")


    visit('/bookmarks')
    expect(page).to have_content 'Google'
    expect(page).to have_content 'Amazon'
    expect(page).to have_content 'Makers'
  end

end
