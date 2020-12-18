feature 'Viewing bookmarks' do
  before(:each) do
    empty
    add_base_bookmarks
  end
  scenario 'A user can see bookmarks as links' do
    visit('/bookmarks')

    expect(page).to have_content "makers"
    expect(page).to have_content "evil"
    expect(page).to have_content "google"
  end

  scenario "A user use the bookmark's name as a link" do
    visit('/bookmarks')
    click_link("google")
    expect(page).to have_button("I'm Feeling Lucky")
  end

end
