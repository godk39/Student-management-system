create database SMS_SAD
go
use SMS_SAD
go

--STUDENT
CREATE TABLE Student(
	StuId int identity PRIMARY KEY NOT NULL,
	StuName varchar(25),
	Gender varchar(25),
	Dob date,
	Age int,
	Address varchar(200),
	Telephone varchar(20),
	Email varchar(50),
	Course varchar(20),
	Nationality varchar(50),
	CivilStatus varchar(50)
)

INSERT INTO Student VALUES('Min', 'Female', '2000-08-27', 20, 'Thai Binh', '0332478819', 'mintt2708@gmail.com', 'SE', 'VietNamese', 'Single')
INSERT INTO Student VALUES('An Phuong', 'Female', '2000-08-27', 20, 'Thai Binh', '0351698742', 'mintt2708@gmail.com', 'SE', 'VietNamese', 'Single')
INSERT INTO Student VALUES('Minh Duc', 'Male', '2000-08-27', 20, 'Thai Binh', '0326548912', 'mintt2708@gmail.com', 'CNT', 'VietNamese', 'Single')
INSERT INTO Student VALUES('Anh Thanh', 'Male', '2000-08-27', 20, 'Thai Binh', '0123659845', 'mintt2708@gmail.com', 'SE', 'VietNamese', 'Single')
INSERT INTO Student VALUES('Taehyung', 'Male', '1999-12-30', 21, 'Daegu', '0159875632', 'mintt2708@gmail.com', 'SE', 'Korean', 'Single')
INSERT INTO Student VALUES('Jungkook', 'Male', '2000-09-01', 20, 'Busan', '0125643985', 'mintt2708@gmail.com', 'SE', 'Korean', 'Single')
INSERT INTO Student VALUES('Johnathan', 'Male', '2000-08-27', 20, 'America', '0125843692', 'mintt2708@gmail.com', 'SE', 'American', 'Married')
INSERT INTO Student VALUES('Lily Collins', 'Female', '1999-03-18', 21, 'Guildford', '0995641235', 'mintt2708@gmail.com', 'IS', 'American', 'Single')

SELECT * FROM Student
drop table student

--COURSE
CREATE TABLE Course(
	CourseId int identity PRIMARY KEY NOT NULL,
	CourseName varchar(50) NOT NULL,
	Description varchar(100) NOT NULL,
)

INSERT INTO Course VALUES('SE', 'Software Engineering')
INSERT INTO Course VALUES('IS', 'Information System')
INSERT INTO Course VALUES('CNT', 'Computer Network and Telecommunication')

SELECT * FROM Course

DROP TABLE Semester
--SEMESTER
CREATE TABLE Semester(
	SemesterId int NOT NULL PRIMARY KEY,
	SemesterName varchar(30),
)
INSERT INTO Semester VALUES(1, 'First')
INSERT INTO Semester VALUES(2, 'Second')
INSERT INTO Semester VALUES(3, 'Third')
SELECT * FROM Semester

--ROLES
create table Role(
	Id int identity primary key NOT NULL,
	Name varchar(30)
)

insert into Role values('ROLE_ADMIN')
insert into Role values('ROLE_USER')

--USERS
create table Users(
	Id int primary key NOT NULL,
	Name varchar(100),
	Username varchar(45) NULL,
	Password varchar(100) NULL,
	Enabled bit NULL, 
)

insert into Users values (0, 'Charlie','admin', '$2a$12$xF26lfg02H3eK.QKDPXcceMBfdNnujdIKBpZVoRyk0JTvd9U88tD6', 1)
insert into Users values (1, 'Min','student', '$2a$12$GVNCRGBfx65WpNeCLKxIYu.D1zhZaXP4TDf.MGyrA0AdXWZRR8I.W', 1)
insert into Users values (2, 'Phuong An','student', '$2a$12$GVNCRGBfx65WpNeCLKxIYu.D1zhZaXP4TDf.MGyrA0AdXWZRR8I.W', 1)
insert into Users values (3, 'Minh Duc','student', '$2a$12$GVNCRGBfx65WpNeCLKxIYu.D1zhZaXP4TDf.MGyrA0AdXWZRR8I.W', 1)
insert into Users values (4, 'Anh Thanh','student', '$2a$12$GVNCRGBfx65WpNeCLKxIYu.D1zhZaXP4TDf.MGyrA0AdXWZRR8I.W', 1)
insert into Users values (5, 'Taehyung','student', '$2a$12$GVNCRGBfx65WpNeCLKxIYu.D1zhZaXP4TDf.MGyrA0AdXWZRR8I.W', 1)
insert into Users values (6, 'Jungkook','student', '$2a$12$GVNCRGBfx65WpNeCLKxIYu.D1zhZaXP4TDf.MGyrA0AdXWZRR8I.W', 1)
insert into Users values (7, 'Johnathan','student', '$2a$12$GVNCRGBfx65WpNeCLKxIYu.D1zhZaXP4TDf.MGyrA0AdXWZRR8I.W', 1)
insert into Users values (8, 'Lily Collins','student', '$2a$12$GVNCRGBfx65WpNeCLKxIYu.D1zhZaXP4TDf.MGyrA0AdXWZRR8I.W', 1)
insert into Users values (51, 'Mr Cam','teacher', '$2a$12$hKGhCSBbqhK7nPLb0sojT./fVPiKGSlio.uqSpOQIZrC92nXBx7Y6', 1)
insert into Users values (52, 'Ms Nguyet','teacher', '$2a$12$hKGhCSBbqhK7nPLb0sojT./fVPiKGSlio.uqSpOQIZrC92nXBx7Y6', 1)
insert into Users values (53, 'Mr Cong','teacher', '$2a$12$hKGhCSBbqhK7nPLb0sojT./fVPiKGSlio.uqSpOQIZrC92nXBx7Y6', 1)
insert into Users values (54, 'Mr Duc','teacher', '$2a$12$hKGhCSBbqhK7nPLb0sojT./fVPiKGSlio.uqSpOQIZrC92nXBx7Y6', 1)
insert into Users values (55, 'Mr Ngoc','teacher', '$2a$12$hKGhCSBbqhK7nPLb0sojT./fVPiKGSlio.uqSpOQIZrC92nXBx7Y6', 1)

select Id, Name, UserName, Password from Users
drop table users

--USER ROLES
create table Users_roles(
	Id int identity primary key NOT NULL,
	UserId int NULL,
	RoleId int NULL
)

insert into Users_roles(UserId, RoleId) values (0, 1)
insert into Users_roles(UserId, RoleId) values (0, 2)
insert into Users_roles(UserId, RoleId) values (1, 2)
insert into Users_roles(UserId, RoleId) values (2, 2)
insert into Users_roles(UserId, RoleId) values (3, 2)
insert into Users_roles(UserId, RoleId) values (4, 2)
insert into Users_roles(UserId, RoleId) values (5, 2)
insert into Users_roles(UserId, RoleId) values (6, 2)
insert into Users_roles(UserId, RoleId) values (7, 2)
insert into Users_roles(UserId, RoleId) values (8, 2)
insert into Users_roles(UserId, RoleId) values (51, 2)
insert into Users_roles(UserId, RoleId) values (52, 2)
insert into Users_roles(UserId, RoleId) values (53, 2)
insert into Users_roles(UserId, RoleId) values (54, 2)
insert into Users_roles(UserId, RoleId) values (55, 2)

drop table Users_roles

--SUBJECT
create table Subject(
	SubId int identity primary key NOT NULL,
	SubName varchar(30) NOT NULL,
	Description varchar(100) NOT NULL,
	StuId int NOT NULL,
	InsId int NOT NULL,
	Semester varchar(50),
	Level varchar(50)
)
insert into Subject values('SAD', 'System Analysis And Design', 1, 55, 'First', 'Second year')
insert into Subject values('SAD', 'System Analysis And Design', 2, 52, 'First', 'Second year')
insert into Subject values('SAD', 'System Analysis And Design', 3, 51, 'First', 'Second year')
insert into Subject values('SAD', 'System Analysis And Design', 4, 52, 'First', 'Second year')
insert into Subject values('WPR', 'Web Programming', 1, 53, 'First', 'Second year')
insert into Subject values('SE1', 'Software Engineer 1', 5, 54, 'First', 'Second year')
insert into Subject values('DBS', 'Database', 8, 51, 'First', 'Second year')

select * from Subject

--INSTRUCTOR
create table Instructor(
	InsId int primary key NOT NULL,
	InsName varchar(100) NOT NULL,
	Gender varchar(20),
	Address varchar(200),
	Phone varchar(20),
	Email varchar(200)
)

insert into Instructor values(51, 'Nguyen Huu Cam','Male', 'Ha Noi', '0326489512', 'camnh@hanu.edu.vn')
insert into Instructor values(52, 'Dao Thi Minh Nguyet','Female', 'Ha Noi', '0986237159', 'nguyetdtm@hanu.edu.vn')
insert into Instructor values(53, 'Nguyen Van Cong','Male', 'Ha Noi', '0236985647', 'congnv@hanu.edu.vn')
insert into Instructor values(54, 'Nguyen Minh Duc','Male', 'Ha Noi', '0496235899', 'ducml@hanu.edu.vn')
insert into Instructor values(55, 'Nguyen Van Ngoc','Male', 'Ha Noi', '0569846139', 'ngocnv@hanu.edu.vn')

select * from Instructor


