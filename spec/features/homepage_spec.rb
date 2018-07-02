feature 'Homepage' do
  scenario 'testing the insfrastructure' do
    visit('/')
    expect(page).to have_content 'Hello World!'
  end
end
