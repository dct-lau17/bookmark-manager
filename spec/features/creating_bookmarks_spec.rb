feature 'Adding a new bookmark' do

  scenario 'A user can add a bookmark to Bookmark Manager' do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://thebookmarkfortesting.com')
    click_button('Add Bookmark')
    expect(page).to have_content 'http://thebookmarkfortesting.com'
  end

  scenario 'The bookmark must be a valid URL' do
    visit('/bookmarks/new')
    fill_in('url', with: 'unqualified bookmark')
    click_button('Add Bookmark')

    expect(page).not_to have_content 'unqualified bookmark'
    expect(page).to have_content 'You must submit a valid URL.'
  end

  scenario 'User can add bookmarks from /bookmark screen' do
    visit('/bookmarks')
    click_button('Create a Bookmark')

    expect(page).to have_button('Add Bookmark')
  end

end
