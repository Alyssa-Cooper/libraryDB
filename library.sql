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
	Book_ID			VARCHAR(50),
	Author			VARCHAR(20),
	ISBN 			INT(14),
	Catalogued		VARCHAR(20),
	Holds			INT(3),
CONSTRAINT Book_PK PRIMARY KEY (Book_ID)
);

CREATE TABLE TRANSACTION_t
(
	Transaction_ID		VARCHAR(20),
	Item_Out			VARCHAR(20),
	Who_Checked_Out 	VARCHAR(20),
	When_Checked_Out 	DATE,
	Return_Date 		DATE),
CONSTRAINT Transaction_PK PRIMARY KEY (Transaction_ID)
);

CREATE TABLE EVENT_t
(
	event_Id 				VARCHAR(20),
	Exhibits_On_Display		VARCHAR(20),
	Owner_Of_Exhibit 		VARCHAR(20),
	Start_Date				DATE,
	End_Date 				DATE,
	Owner_Email 			VARCHAR(20),
	Phone_Number			INT(10),
CONSTRAINT Event_PK PRIMARY KEY (event_Id)
);

CREATE TABLE MEDIA_t
(
	Media_Id 		VARCHAR(20),
	Media_Type	VARCHAR(30),
	Holds			CHAR(30),
CONSTRAINT Media_PK PRIMARY KEY (Media_Id)
);

CREATE TABLE STUDYROOM_t
(
	study_Room_Id	VARCHAR(5),
	Student_Id 		VARCHAR(20),
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
	Return_Date		DATE,
	Student_Name	CHAR(30),
CONSTRAINT Student_PK PRIMARY KEY (Student_Id)
);

INSERT INTO STUDENT_t
VALUES ('W00875435', 'coynej', 'bubbles', 'coynej@wit.edu', 'Ready Player One', '2018-05-24', 'James Coyne');
INSERT INTO STUDENT_t
VALUES ('W00123456', 'toubeaus', 'bread', 'toubeaus@wit.edu', 'Saga Vol 1', '2018-04-01', 'Shawnathan Toubeau');
INSERT INTO STUDENT_t
VALUES ('W00789654', 'beaucagej', 'pizza', 'beaucagej@wit.edu', 'Eye of the World', '2018-05-03', 'Jeffrey Beaucage');
INSERT INTO STUDENT_t
VALUES ('W00678876', 'seltenreichs', 'notEvil', 'seltenreichs@wit.edu', 'Black Panther Comic', '2019-03-23', 'Sophia Seltenreich');
INSERT INTO STUDENT_t
VALUES ('W00456321', 'kylev', 'coastModern', 'kylev@wit.edu', 'Rogue One', '2019-03-13', 'Vicky Kyle');
INSERT INTO STUDENT_t
VALUES ('W00124567', 'petersena', 'darkchocolate', 'petersena@wit.edu', 'Cracking the Coding Interview', '2018-05-21', 'Abigail Petersen');

INSERT INTO BOOK_t
VALUES ('Ready Player One', 'Ernest Cline', 8297827818301, 'Book', 0);
INSERT INTO BOOK_t
VALUES ('Saga Vol 1', 'John Cena', 8959120715759, 'Book', 3);
INSERT INTO BOOK_t
VALUES ('Eye of the World', 'Robert Jordan', 7718800405691, 'Book', 3);
INSERT INTO BOOK_t
VALUES ('Black Panther Comic', 'Stan Lee', 6692457568506, 'Book', 1);
INSERT INTO BOOK_t
VALUES ('Rogue One', 'George Lucas', 9757089502679, 'Book', 0);
INSERT INTO BOOK_t
VALUES ('Cracking the Coding Interview', 'Gayle G', 7079559901159, 'Book', 0);

INSERT INTO STUDYROOM_t
VALUES ('1', 'W00875435', 3:00);
INSERT INTO STUDYROOM_t
VALUES ('2', 'W00123456', 4:30);
INSERT INTO STUDYROOM_t
VALUES ('3', 'W00789654', 7:45);
INSERT INTO STUDYROOM_t
VALUES ('4', 'W00678876', 8:15);
INSERT INTO STUDYROOM_t
VALUES ('5', 'W00456321', 1:15);
INSERT INTO STUDYROOM_t
VALUES ('6', 'W00124567', 2:30);

INSERT INTO STAFF_t
VALUES ('w00985436', 'sheamusp' 'password', 'sheamusp@wit.edu', 'librarian');
INSERT INTO STAFF_t
VALUES ('w00988754', 'hellenk' 'cheeseburgers', 'hellenk@wit.edu', 'help desk');
INSERT INTO STAFF_t
VALUES ('w00654709', 'mirandao' 'ilovebooks', 'mirandao@wit.edu', 'help desk');
INSERT INTO STAFF_t
VALUES ('w00985436', 'perryj' 'funbooks', 'perryj@wit.edu', 'librarian');
INSERT INTO STAFF_t
VALUES ('w00546436', 'crosbyc' 'mechanicalkeyboards', 'crosbyc@wit.edu', 'work study');

INSERT INTO MEDIA_t
VALUES ('Star Wars', 'Movie', 3);
INSERT INTO MEDIA_t
VALUES ('The Avengers', 'Movie', 0);
INSERT INTO MEDIA_t
VALUES ('Dark Side of the Moon', 'CD', 1);
INSERT INTO MEDIA_t
VALUES ('Entertainment', 'CD', 15);
INSERT INTO MEDIA_t
VALUES ('Scott Pilgrim vs The World', 'Movie', 0);
INSERT INTO MEDIA_t
VALUES ('After Laughter', 'CD', 7);

INSERT INTO EVENT_t
VALUES ('Virtual Fractality', 1, 'Ava Poppas', '1-MARCH-2018', '1-APRIL-2018', 'poppasa@wit.edu', '1234567899');
INSERT INTO EVENT_t
VALUES ('Career Fair', 1, 'Co-op Office', '20-MARCH-2018', '21-MARCH-2018', 'coopoffice@wit.edu', '2034506578');

INSERT INTO TRANSACTION_t
VALUES('svbx3619jf', 'Ready Player One', 'W00875435', '2018-05-24', '2018-05-24');
INSERT INTO TRANSACTION_t
VALUES('mm52ti67mb', 'Saga Vol 1', 'W00123456', '2018-04-16', '2018-05-10');
INSERT INTO TRANSACTION_t
VALUES('mn91g4xhh3', 'Eye of the World', 'W00789654', '2018-05-3', '2018-05-18');
INSERT INTO TRANSACTION_t
VALUES('9hygaqbf5h', 'Black Panther Comic', 'W00678876', '2018-03-7', '2018-03-21');
INSERT INTO TRANSACTION_t
VALUES('7rtg3kqqeq', 'Rogue One', 'W00456321', '2018-03-12', '2018-03-24');
INSERT INTO TRANSACTION_t
VALUES('nz3uz3kicb', 'Cracking the Coding Interview', 'W00124567', '2018-05-7', '2018-05-22');

/*
From here under is the many to many tables that need to be started...


bookid/Transaction_ID
transaction/MEDIA_t
transaction/STUDENT_t
staff/TRANSACTION_t
staff/study_Room_Id

*chris will do bottom four*
staff/evemt
staff/MEDIA_t
staff/student
*/

CREATE TABLE bookTransaction (
  Book_ID			VARCHAR(50),
  Transaction_ID VARCHAR(20);
CONSTRAINT bookTransaction_PK PRIMARY KEY (Book_Id);
CONSTRAINT bookTransaction_PK PRIMARY KEY (Transaction_ID);
);

CREATE TABLE transactionMedia (
  Media_Id			VARCHAR(20),
  Transaction_ID VARCHAR(20);
CONSTRAINT transactionMedia_PK PRIMARY KEY (Media_Id);
CONSTRAINT transactionMedia_PK PRIMARY KEY (Transaction_ID);
);

CREATE TABLE studentTransaction (
  Student_Id VARCHAR(20),
  Transaction_ID VARCHAR(20);
CONSTRAINT studentTransaction_PK PRIMARY KEY (Student_Id);
CONSTRAINT studentTransaction_PK PRIMARY KEY (Transaction_ID);
);

CREATE TABLE staffTransaction (
  Staff_Id			VARCHAR(20),
  Transaction_ID VARCHAR(20);
CONSTRAINT bookTransaction_PK PRIMARY KEY (Staff_Id);
CONSTRAINT bookTransaction_PK PRIMARY KEY (Transaction_ID);
);

CREATE TABLE staffStudyRoom (
  Staff_Id			VARCHAR(20),
  study_Room_Id VARCHAR(20);
CONSTRAINT staffStudyRoom_PK PRIMARY KEY (Staff_Id);
CONSTRAINT staffStudyRoom_PK PRIMARY KEY (study_Room_Id);
);
