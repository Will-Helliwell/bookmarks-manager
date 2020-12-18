feature 'Viewing bookmarks' do
  before(:each) do
    empty
    add_base_bookmarks
  end
  scenario 'A user can see bookmarks as links' do
    visit('/bookmarks')
    expect(page).to have_link("makers", :href=>"http://www.makersacademy.com")
    expect(page).to have_link("evil", :href=>"http://www.destroyallsoftware.com")
    expect(page).to have_link("google", :href=>"http://www.google.com")
  end

end
