require 'pg'

def setup_test_database

  p "Cleaning databases ..."

  connection = PG.connect(dbname: 'bookmark_manager_test')

  connection.exec("TRUNCATE bookmarks;")

end
