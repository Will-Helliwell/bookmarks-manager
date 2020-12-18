require 'Bookmark'

describe Bookmark do

  let(:bookmark) {Bookmark.new("21", "www.com", "my website")}

  it "takes 3 arguments on initialization" do
    expect(described_class).to respond_to(:new).with(3).arguments
  end
  it "is given an id on initialization" do
    expect(bookmark.id).to eq("21")
  end
  it "is given a url on initialization" do
    expect(bookmark.url).to eq("www.com")
  end
  it "is given a name on initialization" do
    expect(bookmark.name).to eq("my website")
  end

  describe 'self.all' do
    it 'returns an array of bookmark instances' do
      array = Bookmark.all
      expect(array.length).to eq(3)
      expect(array.first).to be_a(Bookmark)
      # expect(array.first.id).to eq("1")
      expect(array.first.url).to eq("http://www.makersacademy.com")
      expect(array.first.name).to eq("makers")
    end
  end

  describe 'self.add_bookmark' do
    it 'adds a bookmark to the database, taking two arguments for url and name' do
      Bookmark.add_bookmark("Iansbigbrain.net", "Ians brain website")

      expect(Bookmark.all.last.name).to eq "Ians brain website"
      expect(Bookmark.all.last.url).to eq "Iansbigbrain.net"

    end
  end
end
