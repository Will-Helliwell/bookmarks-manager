require 'bookmarkfolder'

describe BookmarkFolder do
  let(:bookmark1) { double :bookmark1 }
  let(:bookmark2) { double :bookmark2 }
  it 'displays the list of bookmarks' do
    subject.add(bookmark1)
    subject.add(bookmark2)
    expect(subject.all).to eq ([bookmark1, bookmark2])
  end
end
