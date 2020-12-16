feature "Add bookmark" do

  before(:each) do
    empty
    add_base_bookmarks
  end

  scenario "it adds a bookmark to the database" do
    visit('/')
    fill_in("url", with: "www.ian.biz")
    click_button("add bookmark")
    click_link("Please click to view bookmarks my friend!")
    expect(page).to have_content("www.ian.biz")
  end

end
