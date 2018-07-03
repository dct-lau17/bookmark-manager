feature 'Viewing bookmarks' do
  scenario 'A user can see bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    #Add the test data
    connection.exec("INSERT INTO bookmarks VALUES (1, 'http://google.com');")
    connection.exec("INSERT INTO bookmarks VALUES (2, 'http://amazon.co.uk');")
    connection.exec("INSERT INTO bookmarks VALUES (3, 'http://makersacademy.com');")


    visit('/bookmark')
    expect(page).to have_content 'http://google.com'
    expect(page).to have_content 'http://amazon.co.uk'
    expect(page).to have_content 'http://makersacademy.com'
  end
end
