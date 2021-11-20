CREATE DATABASE IF NOT EXISTS customers;
USE customers;

DROP TABLE IF EXISTS Users;
DROP TABLE IF EXISTS Posts;
DROP TABLE IF EXISTS Comments;

CREATE TABLE Users 
(
	`userID` INT(11) NOT NULL AUTO_INCREMENT,
	`username` varchar(30) NOT NULL UNIQUE,
    `password` varchar(60) NOT NULL,
	`email` varchar(60) NOT NULL,
	PRIMARY KEY (`userID`)
);

CREATE TABLE Posts 
(
	`postID` INT(11) NOT NULL AUTO_INCREMENT,
	`userID` INT(11) NOT NULL,
    `post` TEXT NOT NULL,
	`dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
    `lastModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`postID`)
);

CREATE TABLE Comments 
(
	`commentID` INT(11) NOT NULL AUTO_INCREMENT,
	`userID` INT(11) NOT NULL,
	`postID` INT(11) NOT NULL,
    `comment` TEXT NOT NULL,
	`dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
	`lastModifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`commentID`)
);
