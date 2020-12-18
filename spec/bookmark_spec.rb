require 'Bookmark'

describe Bookmark do
  before(:each) do
    empty
    add_base_bookmarks
  end
  describe 'self.all' do
    it 'returns a list of bookmark names' do
      expect(Bookmark.all).to include "makers"
      expect(Bookmark.all).to include "evil"
      expect(Bookmark.all).to include "google"
    end
  end

  describe 'self.add_bookmark' do
    it 'adds a bookmark to the database, taking two arguments' do
      Bookmark.add_bookmark("Iansbigbrain.net", "Ians brain website")

      expect(Bookmark.all).to include "Ians brain website"

    end
  end
end
