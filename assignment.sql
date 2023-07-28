create database day1
use day1;
create table department(
department_id int auto_increment primary key,
department_name enum ('sale','marketing','dev','test')
)
create table positionn(
positionn_id int auto_increment primary key,
positionn_name enum ('dev','test','PM')
)
drop table accountt
create table accountt(
accountt_id int auto_increment primary key,
email varchar (50),
user_name varchar (50),
full_name varchar (50),
deparment_id int,
positionn_id int
)
drop table groupp
create table groupp(
groupp_id int auto_increment primary key,
groupp_name varchar (50),
creator_id int,
create_date date
)
drop table group_account
create table group_accountt(
groupp_id int,
accountt_id int,
join_date date,
foreign key (groupp_id) references groupp (groupp_id)
)
drop table type_question
create table type_question(
type_id int  auto_increment primary key,
type_name varchar (100)
)
drop table category_question
create table category_question(
category_id int auto_increment primary key,
category_name varchar (100)
)
drop table question
create table question(
question_id int auto_increment primary key,
content varchar (100),
category_id int,
type_id int,
creator_id int,
create_date date
)
drop table answer
create table answer(
answer_id int auto_increment primary key,
content varchar (100),
question_id int,
iscorrect enum ('dung','sai')
)
drop table exam
create table exam(
exam_id int auto_increment primary key,
codee varchar(20),
title varchar(100),
category_id int,
duration datetime,CREATE TABLE `accountt` (
  `accountt_id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(50) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `full_name` varchar(50) DEFAULT NULL,
  `deparment_id` int DEFAULT NULL,
  `positionn_id` int DEFAULT NULL,
  PRIMARY KEY (`accountt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `answer` (
  `answer_id` int NOT NULL AUTO_INCREMENT,
  `content` varchar(100) DEFAULT NULL,
  `question_id` int DEFAULT NULL,
  `iscorrect` enum('dung','sai') DEFAULT NULL,
  PRIMARY KEY (`answer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `category_question` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `department` (
  `department_id` int NOT NULL AUTO_INCREMENT,
  `department_name` enum('sale','marketing','dev','test') DEFAULT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `exam_question` (
  `exam_id` int DEFAULT NULL,
  `question_id` int DEFAULT NULL,
  KEY `exam_id` (`exam_id`),
  CONSTRAINT `exam_question_ibfk_1` FOREIGN KEY (`exam_id`) REFERENCES `exam` (`exam_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `exam` (
  `exam_id` int NOT NULL AUTO_INCREMENT,
  `codee` varchar(20) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `duration` datetime DEFAULT NULL,
  `creator_id` int DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  PRIMARY KEY (`exam_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `group_accountt` (
  `groupp_id` int DEFAULT NULL,
  `accountt_id` int DEFAULT NULL,
  `join_date` date DEFAULT NULL,
  KEY `groupp_id` (`groupp_id`),
  CONSTRAINT `group_accountt_ibfk_1` FOREIGN KEY (`groupp_id`) REFERENCES `groupp` (`groupp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `groupp` (
  `groupp_id` int NOT NULL AUTO_INCREMENT,
  `groupp_name` varchar(50) DEFAULT NULL,
  `creator_id` int DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  PRIMARY KEY (`groupp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `positionn` (
  `positionn_id` int NOT NULL AUTO_INCREMENT,
  `positionn_name` enum('dev','test','PM') DEFAULT NULL,
  PRIMARY KEY (`positionn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `question` (
  `question_id` int NOT NULL AUTO_INCREMENT,
  `content` varchar(100) DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `type_id` int DEFAULT NULL,
  `creator_id` int DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `type_question` (
  `type_id` int NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

creator_id int,
create_date date
)
drop table exam_question
create table exam_question(
exam_id int,
question_id int,
foreign key (exam_id) references exam (exam_id)
)
