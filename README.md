# Bookmark Manager

## Project description
This weeks challenge includes building a bookmark manager that can be used to save
webpages that a user finds useful. It can add tags to the webpages the user has saved.
You can browse bookmarks other users have added and add comments.

## Approach:
-----
````
### Domain Model

╔════════════╗         .all         ╔════════════╗  
║            ║--------------------->║            ║  
║ Controller ║ [array of bookmarks] ║  Bookmark  ║  
║            ║<---------------------║            ║  
╚════════════╝                      ╚════════════╝  

````
### User Stories

**User Story 1:**   
As a time-pressed user  
So that I can quickly visit webpages I frequently visit  
I would like to see a list of bookmarks on the homepage  

**User Story 2:**   
As a time-pressed user  
So that I can save a webpages I frequently visit  
I would like to add the URL and a title to the bookmark manager.
