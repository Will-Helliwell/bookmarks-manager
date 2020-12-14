class BookmarkFolder



  def initialize
    @bookmark_array = []
  end

  def add(bookmark)
    @bookmark_array << bookmark
  end

  def all
    @bookmark_array
  end


end
