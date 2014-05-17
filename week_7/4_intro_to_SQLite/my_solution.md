# U3.W7: Intro to SQLite

## Release 0: Create a dummy database

<!-- paste your terminal output here -->

sqlite> select * from users;
id          first_name  last_name   email                  created_at           updated_at         
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-05-17 04:26:15  2014-05-17 04:26:15


## Release 1: Insert Data 
<!-- paste your terminal output here -->

sqlite> select * from users;
id          first_name  last_name   email                  created_at           updated_at         
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-05-17 04:26:15  2014-05-17 04:26:15
2           Amol        Borcar      aborcar@gmail.com      2014-05-17 04:29:31  2014-05-17 04:29:31
sqlite> 

## Release 2: Multi-line commands
<!-- paste your terminal output here -->

sqlite> select * from users;
id          first_name  last_name   email                  created_at           updated_at         
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-05-17 04:26:15  2014-05-17 04:26:15
2           Amol        Borcar      aborcar@gmail.com      2014-05-17 04:29:31  2014-05-17 04:29:31
sqlite> 

Note: the error is because the email column is UNIQUE so the same value cannot be added twice.

## Release 3: Add a column
<!-- paste your terminal output here -->

id          first_name  last_name   email                  created_at           updated_at           nickname  
----------  ----------  ----------  ---------------------  -------------------  -------------------  ----------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-05-17 04:26:15  2014-05-17 04:26:15  Kimchee   
2           Amol        Borcar      aborcar@gmail.com      2014-05-17 04:29:31  2014-05-17 04:29:31  Borc  

## Release 4: Change a value
<!-- paste your terminal output here -->

id          first_name  last_name   email                  created_at           updated_at           nickname   
----------  ----------  ----------  ---------------------  -------------------  -------------------  -----------
1           Kimmy       Lin         kimmy@devbootcamp.com  2014-05-17 04:26:15  2014-05-17 04:41:20  Ninja Coder
2           Amol        Borcar      aborcar@gmail.com      2014-05-17 04:29:31  2014-05-17 04:29:31  Borc 

## Release 5: Reflect
<!-- Add your reflection here -->

I've never used SQL from the command line, so this was interesting.  It seems pretty intuitive how to create and manage data, but I'm sure the command line interface will trip me up.  I already had problems because I kept forgetting semicolons at the end of my lines, and my solution was to just quit and restart sqlite because I couldn't think of what the problem was.  D'oh!  The tutorial was also very helpful for these basic steps.