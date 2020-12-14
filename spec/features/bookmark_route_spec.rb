feature 'index page' do
  scenario 'it loads' do
    visit('/bookmarks')
    expect(page).to have_content "Here's your bookmarks:"
  end
end
