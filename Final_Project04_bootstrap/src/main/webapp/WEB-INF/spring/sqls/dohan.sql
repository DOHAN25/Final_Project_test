DROP TABLE USERS;

CREATE TABLE USERS(
	userId VARCHAR2(100) PRIMARY KEY,
	password VARCHAR2(100) NOT NULL,
	userEmail VARCHAR2(1000) NOT NULL,
	userPhone NUMBER NOT NULL,
	userAddress VARCHAR2(4000) NOT NULL,
	userRole VARCHAR2(100) CHECK(userRole IN ('admin', 'user')),
	userName VARCHAR2(100) NOT NULL,
	userBirthday VARCHAR2(100) NOT NULL
);


INSERT INTO USERS
VALUES('dj', '1234', 'jd@naver.com', 01012311231, '�԰�ϵ� �ͺ���', 
'user', '�����', '930812');


INSERT INTO USERS
VALUES('dh', '3333', 'dh@naver.com', 010123423112, '����Ư���� ���빮', 
'user', '�赵��', '950511');


select * from users;