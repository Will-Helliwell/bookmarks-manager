require 'pg'

class BookmarkFolder
  def all
    # @bookmark_array
    if ENV['RACK_ENV'] == 'test'
      con = PG.connect(dbname: 'bookmark_manager_test')
    else
      con = PG.connect(dbname: 'bookmark_manager')
    end

    rs = con.exec "SELECT * FROM bookmarks"

    rs.map do |row|
      row['url']
    end
  end

  def add_bookmark(web_address)
    if ENV['RACK_ENV'] == 'test'
      con = PG.connect(dbname: 'bookmark_manager_test')
    else
      con = PG.connect(dbname: 'bookmark_manager')
    end

    rs = con.exec "INSERT INTO bookmarks (url) VALUES ('#{web_address}')"

  end

end
