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
end
