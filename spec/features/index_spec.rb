feature 'index page' do
  scenario 'it loads' do
    visit('/')
    expect(page).to have_content "Here's your bookmarks:"
  end
end