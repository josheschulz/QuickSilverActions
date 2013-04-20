Quick Silver Actions
====================

A collection of applescript actions for quicksilver.

To build them run the bash script from the command line:

./deploy.sh [SCRIPT NAME] [ICON RESOURCE FILE]

will compile the script, set the icon, and copy it to the quicksilver actions directory.

./buildAll.sh builds all the actions.

Search Evernote
===============

Takes text and searches evernote for it.  Displays results in evernote.

Log Evernote
============

Write the text from the first panel to the end of an evernote note with the title
Daily Notes MM/DD/YYYY

This let's you jot down information directly from quicksilver.  If the note doesn't
exist it will be created in the default notebook.
