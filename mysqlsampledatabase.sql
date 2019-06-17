/*
install MYSQL DB for opsschool project
*/

CREATE DATABASE IF NOT EXISTS opsschool;

USE opsschool;

DROP TABLE IF EXISTS subjects;

CREATE TABLE subjects (
    SubjectId int NOT NULL AUTO_INCREMENT,
    SubjectName varchar(255) NOT NULL,
    UpdateDate DATETIME NOT NULL DEFAULT now(),
    PRIMARY KEY (SubjectId)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


/* Data for the table subjects */

insert into subjects (SubjectName,UpdateDate) 
values 
('Ansible','2019-03-04 15:30:21'),
('Jenkins','2019-04-22 10:05:17'),
('Terraform','2019-02-11 23:00:00'),
('AWS','2018-04-05 10:40:44'),
('Python','2017-11-20 12:30:56'),
('Docker','2016-02-01 22:02:15'),
('MySQL','2013-10-03 05:30:06');



CREATE USER 'yishai'@'%' IDENTIFIED BY 'opsschoolsql';

GRANT ALL PRIVILEGES ON *.* to yishai@'%' IDENTIFIED BY 'opsschoolsql' WITH GRANT OPTION;

FLUSH PRIVILEGES;

EXIT
