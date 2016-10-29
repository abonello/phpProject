phpProject

This is intended to be a tutorial/demo of my work using php.
As a side-effect, I am practicing the use of Github as well.
It is based on
Create a Content Management System With PHP and MySQLI Part-1
http://www.w3programmers.com/create-a-content-management-system-with-php-oop-and-mysqli-part-1/

1. Start with an html template
2. Turn this to be useable forCMS
3. Step 1: convert index.html to index.php
4. Separate the menu, header, content, left bar and footer into separate .php include files.

NB. I will not be using Dreamweaver but will be coding by hand using Komodo Edit.
	The index.html / index.php  is not html5, so I will be converting it to html5.
	
5. Change the DOCTYPE to html5, edited the html tag and removed some meta information.
6. Include all php-include files in their respective place within index.php.

7. Php template is ready.

********************************************************************

8. Time to create the database
	Name: cms
	two tables: menu & categories

9. Create the php file that connects to the database. This is similar to the one I wrote for the “favourite movies” project (except that this is class based). File called cms.inc.php

10. included this file in index.php.

11. Modified menu.inc.php to get menu from database.

12. In index.php, all include files where changed to require_once

