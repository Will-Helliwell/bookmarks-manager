require 'bookmarkfolder'

describe BookmarkFolder do
  before(:each) do
    empty
    add_base_bookmarks
  end
  describe '#all' do
    it 'returns a list of bookmark names' do
      folder = BookmarkFolder.new
      bookmarks = folder.all

      expect(bookmarks).to include "makers"
      expect(bookmarks).to include "evil"
      expect(bookmarks).to include "google"
    end
  end

  describe '#add_bookmark' do
    it 'adds a bookmark to the database, taking two arguments' do
      folder = BookmarkFolder.new
      folder.add_bookmark("Iansbigbrain.net", "Ians brain website")
      bookmarks = folder.all

      expect(bookmarks).to include "Ians brain website"

    end
  end
end
