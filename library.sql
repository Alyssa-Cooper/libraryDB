DROP TABLE IF EXISTS STUDENT_t;
DROP TABLE IF EXISTS STUDYROOM_t;
DROP TABLE IF EXISTS MEDIA_t;
DROP TABLE IF EXISTS EVENT_t;
DROP TABLE IF EXISTS TRANSACTION_t;
DROP TABLE IF EXISTS BOOK_t;
DROP TABLE IF EXISTS STAFF_t;


CREATE TABLE STAFF_t
(
  Staff_Id		VARCHAR(10),
	user_name		VARCHAR(20),
	Password		VARCHAR(20),
	Email			VARCHAR(20),
	Role			CHAR(15),
CONSTRAINT Staff_PK PRIMARY KEY (Staff_Id)
);

CREATE TABLE BOOK_t
(
	Book_ID			VARCHAR(20),
	Author			VARCHAR(20),
	ISBN 			VARCHAR(20),
	Catalogued		VARCHAR(20),
	Holds			VARCHAR(20),
CONSTRAINT Book_PK PRIMARY KEY (Book_ID)
);

CREATE TABLE TRANSACTION_t
(
	Transaction_ID		VARCHAR(20),
	Item_Out			VARCHAR(20),
	Who_Checked_Out 	VARCHAR(20),
	When_Checked_Out 	VARCHAR(20),
	Return_Date 		VARCHAR(20),
CONSTRAINT Transaction_PK PRIMARY KEY (Transaction_ID)
);

CREATE TABLE EVENT_t
(
	event_Id 				VARCHAR(20),
	Exhibits_On_Display		VARCHAR(20),
	Owner_Of_Exhibit 		VARCHAR(20),
	Start_Date				VARCHAR(20),
	End_Date 				VARCHAR(20),
	Owner_Email 			VARCHAR(20),
	Phone_Number			INT(8),
CONSTRAINT Event_PK PRIMARY KEY (event_Id)
);

CREATE TABLE MEDIA_t
(
	Media_Id 		VARCHAR(20),
	Media_Name		VARCHAR(30),
	Holds			CHAR(30),
CONSTRAINT Media_PK PRIMARY KEY (Media_Id)
);

CREATE TABLE STUDYROOM_t
(
	study_Room_Id	VARCHAR(5),
	Student_Id 		VARCHAR(9),
	room_number	VARCHAR(9),
	timeRequested		TIME(),
CONSTRAINT Study_Room_PK PRIMARY KEY (study_Room_Id),
CONSTRAINT Study_Room_FK1 FOREIGN KEY (Student_Id) REFERENCES STUDENT_t(Student_Id)
);

CREATE TABLE STUDENT_t (
	Student_Id 		VARCHAR(20),
	user_name		CHAR(30),
	Password 		VARCHAR(20),
	Student_Email	VARCHAR(20),
	Item_Borrowed	VARCHAR(30),
	Return_Date		VARCHAR(20),
	Student_Name	CHAR(30),
CONSTRAINT Student_PK PRIMARY KEY (Student_Id)
);
