require 'bookmarkfolder'

describe BookmarkFolder do
  before(:each) do
    empty
    add_base_bookmarks
  end
  describe 'self.all' do
    it 'returns a list of bookmark names' do
      expect(BookmarkFolder.all).to include "makers"
      expect(BookmarkFolder.all).to include "evil"
      expect(BookmarkFolder.all).to include "google"
    end
  end

  describe 'self.add_bookmark' do
    it 'adds a bookmark to the database, taking two arguments' do
      BookmarkFolder.add_bookmark("Iansbigbrain.net", "Ians brain website")

      expect(BookmarkFolder.all).to include "Ians brain website"

    end
  end
end
