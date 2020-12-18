require 'pg'

class Bookmark

  attr_reader :id, :url, :name

  def initialize(id, url, name)
    @id = id
    @url = url
    @name = name
  end

  def self.all
    begin

      if ENV['RACK_ENV'] == 'test'
        con = PG.connect(dbname: 'bookmark_manager_test')
      else
        con = PG.connect(dbname: 'bookmark_manager')
      end

      rs = con.exec "SELECT * FROM bookmarks"

      rs.map do |row|
        Bookmark.new(row['id'], row['url'], row['name'])
        # row['name']
      end

      rescue PG::Error => e

      puts e.message

      ensure

      rs.clear if rs
      con.close if con

    end
  end

  def self.add_bookmark(web_address, name)
    begin
      if ENV['RACK_ENV'] == 'test'
        con = PG.connect(dbname: 'bookmark_manager_test')
      else
        con = PG.connect(dbname: 'bookmark_manager')
      end

      rs = con.exec "INSERT INTO bookmarks (url, name) VALUES ('#{web_address}', '#{name}')"

      rescue PG::Error => e

      puts e.message

      ensure

      rs.clear if rs
      con.close if con
    end
  end
end
