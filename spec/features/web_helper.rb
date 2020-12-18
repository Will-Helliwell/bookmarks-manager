def empty
  con = PG.connect(dbname: 'bookmark_manager_test')
  rs = con.exec "TRUNCATE bookmarks"
end

def add_base_bookmarks
  con = PG.connect(dbname: 'bookmark_manager_test')
  rs = con.exec "INSERT INTO bookmarks (url, name) VALUES ('http://www.makersacademy.com', 'makers')"
  rs = con.exec "INSERT INTO bookmarks (url, name) VALUES ('http://www.destroyallsoftware.com', 'evil')"
  rs = con.exec "INSERT INTO bookmarks (url, name) VALUES ('http://www.google.com', 'google')"
end
