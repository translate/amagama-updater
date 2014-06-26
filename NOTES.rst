Steps
=====

These are the steps as I understand them:

1. We download files from various resources using Friedel's update-*.sh scripts
2. This data is imported into the database using various importer scripts that
   mostly just set the project name.
3. This is imported into an amagama database named amagama_$date
4. This database is dumped, copied to the live server and loaded
5. The server database is switched over in the live amagama
6. Rinse and repeat


Improvements
------------
Ideas for improvements

1. The scripts would benefit from being able to checkout branches so we can
   e.g. load LibreOffice 4.1 and 4.2
2. Being able to update repo's or clone them as needed
3. I guess pulling everything together to make a single import script that
   could be automated. I.e. update, import into new db, dump.  Maybe scp and load.
