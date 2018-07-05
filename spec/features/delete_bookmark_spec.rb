feature 'Deleting a bookmark' do
  scenario 'A user can delete a bookmark' do
    Bookmark.create(url: 'http://hotmail.com', title: 'Hotmail')
    visit('/bookmarks')

    click_button(id: "delete-Hotmail")
    expect(current_path).to eq '/bookmarks'
    expect(page).not_to have_content 'Hotmail'
  end
end
