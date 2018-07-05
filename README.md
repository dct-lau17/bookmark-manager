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
So that I can save a webpage I frequently visit  
I would like to add the URL and a title to the bookmark manager.

**User Story 3:**   
As a time-pressed user  
So that I can store bookmark data for later retrieval
I want to add a bookmark to Bookmark Manager

**User Story 4:**   
As a time-pressed user  
So that I can remove my bookmark from Bookmark Manager
I want to delete a bookmark
