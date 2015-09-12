DROP TABLE IF EXISTS tbl_selfexam;
DROP TABLE IF EXISTS tbl_contact;
DROP TABLE IF EXISTS tbl_ribbon_contact;
DROP TABLE IF EXISTS tbl_user;
DROP TABLE IF EXISTS tbl_ribbon;
DROP TABLE IF EXISTS tbl_message;

CREATE TABLE tbl_user
(
	UserEmail VARCHAR(200) NOT NULL,
	Password VARCHAR(255),
	RibbonId INT, 
	PRIMARY KEY (UserEmail),
	FOREIGN KEY (RibbonId) REFERENCES tbl_ribbon(RibbonId)
);

CREATE TABLE tbl_contact
(
	ContactId INT NOT NULL AUTO_INCREMENT,
	ContactEmail VARCHAR(200) NOT NULL,
	UserEmail VARCHAR(200) NOT NULL,
	PRIMARY KEY (ContactId),
	FOREIGN KEY (ContactEmail) REFERENCES tbl_user(UserEmail),
	FOREIGN KEY (UserEmail) REFERENCES tbl_user(UserEmail)
);

 CREATE TABLE tbl_ribbon
 (
	RibbonId INT NOT NULL AUTO_INCREMENT,
	MessageId INT,
	StartDate DATE NOT NULL,
	PRIMARY KEY (RibbonId),
	FOREIGN KEY (MessageId) REFERENCES tbl_message(MessageId)
 );

CREATE TABLE tbl_ribbon_contact
(
	RibbonContactId INT NOT NULL AUTO_INCREMENT,
	ContactEmail VARCHAR(200) NOT NULL,
	RibbonId INT NOT NULL,
	PRIMARY KEY (RibbonContactId),
	FOREIGN KEY (ContactEmail) REFERENCES tbl_user(UserEmail),
	FOREIGN KEY (RibbonId) REFERENCES tbl_ribbon(RibbonId)
 );
 
 CREATE TABLE tbl_selfexam
 (
	SelfExamId INT NOT NULL AUTO_INCREMENT,
	UserEmail VARCHAR(200) NOT NULL,
	CompletedDate DATE NOT NULL,
	PRIMARY KEY (SelfExamId),
	FOREIGN KEY (UserEmail) REFERENCES tbl_user(UserEmail)
 );
 
 CREATE TABLE tbl_message
 (
	MessageId INT NOT NULL AUTO_INCREMENT,
	UserEmail VARCHAR(200),
	MessageText VARCHAR (500),
	PRIMARY KEY (MessageId),
	FOREIGN KEY (UserEmail) REFERENCES tbl_user(UserEmail)
 );

