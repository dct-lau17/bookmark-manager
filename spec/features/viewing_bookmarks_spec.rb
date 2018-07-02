feature 'Viewing bookmarks' do
  scenario 'A user can see bookmarks' do
    visit('/bookmark')
    expect(page).to have_content 'http://google.com'
    expect(page).to have_content 'http://amazon.co.uk'
    expect(page).to have_content 'http://makersacademy.com'
  end
end
