require 'pg'

class BookmarkFolder
  def all
    begin

      if ENV['RACK_ENV'] == 'test'
        con = PG.connect(dbname: 'bookmarks_manager_test')
      else
        con = PG.connect(dbname: 'bookmark_manager')
      end

      rs = con.exec "SELECT * FROM bookmarks"

      rs.map do |row|
        row['url']
      end

      rescue PG::Error => e

      puts e.message

      ensure

      rs.clear if rs
      con.close if con

    end
  end

  def add_bookmark(web_address)
    begin
      if ENV['RACK_ENV'] == 'test'
        con = PG.connect(dbname: 'bookmarks_manager_test')
      else
        con = PG.connect(dbname: 'bookmark_manager')
      end

      rs = con.exec "INSERT INTO bookmarks (url) VALUES ('#{web_address}')"

      rescue PG::Error => e

      puts e.message

      ensure

      rs.clear if rs
      con.close if con
    end
  end
end
