require 'bookmarkfolder'



describe BookmarkFolder do
  let(:bookmark1) { double :bookmark1 }
  it 'displays the list of bookmarks' do
    subject.add(bookmark1)
    expect(subject.all).to eq ([bookmark1])
  end
end
