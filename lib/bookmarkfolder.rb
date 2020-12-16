require 'pg'

class BookmarkFolder
  def all
    # @bookmark_array
    con = PG.connect(dbname: 'bookmark_manager')

    rs = con.exec "SELECT * FROM bookmarks"

    rs.map do |row|
      row['url']
    end
  end
end
