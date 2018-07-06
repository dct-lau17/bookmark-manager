feature 'Updating a bookmark' do
  scenario 'A user can update a bookmark' do
    visit('/bookmarks/new')
    fill_in('url', with: "http://www.abc.com")
    fill_in('title', with: "ABC")
    click_button('Add Bookmark')
    click_button(id: "update-ABC")
    fill_in('url', with: "http://www.bbc.co.uk")
    fill_in('title', with: "BBC")
    click_button('Update me!')

    expect(current_path).to eq '/bookmarks'
    expect(page).not_to have_content 'ABC'
    expect(page).to have_content 'BBC'
  end
end
