
# User Stories:

As a user
So that I can remember what I've bookmarked
I would like to see a list of my bookmarks

# Domain Model:

![Domain Model](https://i.imgur.com/xGvsORx.png)

# Database Instructions

1. Connect to psql
2. Create the database using the psql command 'CREATE DATABASE bookmark_manager;'
3. Connect to the database using the psql command '\c bookmark_manager;'
4. Run the query we have saved in the file '01_create_bookmarks_table.sql' (in the db/migrations directory.)


# Test Database

1. set up a new database called bookmarks_manager_test
2. set up a new table within this database and give it the exact same name as your original table
3. Enter in all of the same URL links found in your original table
