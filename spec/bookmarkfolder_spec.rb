require 'bookmarkfolder'

describe BookmarkFolder do
  before(:each) do
    empty
    add_base_bookmarks
  end
  describe '#all' do
    it 'returns a list of bookmarks' do
      folder = BookmarkFolder.new
      bookmarks = folder.all

      expect(bookmarks).to include "http://www.makersacademy.com"
      expect(bookmarks).to include "http://www.destroyallsoftware.com"
      expect(bookmarks).to include "http://www.google.com"
    end
  end

  describe '#add_bookmark' do
    it 'adds a bookmark to the database' do
      folder = BookmarkFolder.new
      folder.add_bookmark("Iansbigbrain.net")
      bookmarks = folder.all

      expect(bookmarks).to include "Iansbigbrain.net"
      
    end
  end
end
