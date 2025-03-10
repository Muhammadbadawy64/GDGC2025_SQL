CREATE DATABASE social_media; 
USE social_media;

CREATE TABLE Users (
userID Int IDENTITY PRIMARY KEY NOT NULL,
userName NVARCHAR(50) UNIQUE NOT NULL,
Email NVARCHAR(100) UNIQUE NOT NULL,
Gender NVARCHAR(50) NOT NULL,
DOB DATE NOT NULL,
JoinDate DATETIME DEFAULT GETUTCDATE()
)
SELECT * FROM Users;

CREATE TABLE Posts (
postID Int IDENTITY PRIMARY KEY NOT NULL,
content NVARCHAR(250) NOT NULL,
postDate DATETIME DEFAULT GETUTCDATE(),
isPublic NVARCHAR(50),
isPrivate NVARCHAR(50),
UserID INT NOT NULL,
FOREIGN KEY (UserID) REFERENCES Users(userID)  
)
SELECT * FROM Posts;

CREATE TABLE Comment(
commentID Int IDENTITY PRIMARY KEY NOT NULL,
commentDate DATETIME DEFAULT GETUTCDATE(),
content NVARCHAR(250) NOT NULL,
UserID INT NOT NULL,
postID INT NOT NULL,
FOREIGN KEY (UserID) REFERENCES Users(userID),
FOREIGN KEY (postID) REFERENCES Posts(postID)
)
SELECT * FROM Comment;

CREATE TABLE Interaction (
InteractionID Int IDENTITY PRIMARY KEY NOT NULL,
Type NVARCHAR(50) NOT NULL,
InteractionDate DATETIME DEFAULT GETUTCDATE(),
UserID INT NOT NULL,
postID INT NOT NULL,
FOREIGN KEY (UserID) REFERENCES Users(userID),
FOREIGN KEY (postID) REFERENCES Posts(postID)
)
SELECT * FROM Interaction;

CREATE TABLE User_Post(
UserID INT NOT NULL,
postID INT NOT NULL,
FOREIGN KEY (UserID) REFERENCES Users(userID),
FOREIGN KEY (postID) REFERENCES Posts(postID)
)
SELECT * FROM User_Post;

DROP TABLE Users;


SELECT name 
FROM sys.databases 
WHERE name = 'social_media';

DROP DATABASE social_media;