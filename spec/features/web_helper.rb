def empty
  con = PG.connect(dbname: 'bookmark_manager_test')
  rs = con.exec "TRUNCATE bookmarks"
end

def add_base_bookmarks
  con = PG.connect(dbname: 'bookmark_manager_test')
  rs = con.exec "INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com')"
  rs = con.exec "INSERT INTO bookmarks (url) VALUES ('http://www.destroyallsoftware.com')"
  rs = con.exec "INSERT INTO bookmarks (url) VALUES ('http://www.google.com')"
end
