UPDATE db_day01.student
SET height = 1.80;

SELECT *
FROM db_day01.student;

-- primary key PK 主键 主关键字 主码

CREATE DATABASE db_day02;

CREATE TABLE db_day02.student (
  id   INT AUTO_INCREMENT  PRIMARY KEY COMMENT 'id PK',
  name VARCHAR(255) NOT NULL COMMENT 'name',
  age  INT COMMENT 'age',
  gender char(1) DEFAULT 'M' COMMENT 'gender',
  email VARCHAR(191) UNIQUE COMMENT 'email', -- 独特的\ [juː'niːk]
  dob DATETIME DEFAULT now() COMMENT 'date of birth',
  departmentId INT COMMENT 'department id FK',
  CONSTRAINT FOREIGN KEY (departmentId) REFERENCES db_day02.department(id) -- 不推荐
) COMMENT 'student table';

CREATE TABLE db_day02.department (
  id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'id PK',
  title VARCHAR(255) NOT NULL COMMENT 'title',
  tel VARCHAR(255) NOT NULL  COMMENT 'telephone'
) COMMENT 'department table';

ALTER TABLE db_day02.student -- 推荐
  ADD CONSTRAINT
  student_fk_departmentId
FOREIGN KEY (departmentId)
REFERENCES db_day02.department(id);

INSERT INTO db_day02.student VALUE (NULL, 'Tom', 18, 'F', 'tom@gmail.com', NULL, 1);
INSERT INTO db_day02.student(name, age, email, gender, departmentId) VALUE ('Jerry', 17, 'jerry@gmail.com', 'F', 2);
INSERT INTO db_day02.student(name, age, email, departmentId) VALUE ('Scott', NULL, 'scott@gmail.com', NULL);
INSERT INTO db_day02.student(name, age, email) VALUE ('King' , NULL, NULL);
INSERT INTO db_day02.student(name) VALUE ('Kate'); -- default

INSERT INTO db_day02.department VALUE (NULL, 'CS', '010-12345678');
INSERT INTO db_day02.department VALUE (NULL, 'EE', '010-12345679');

SELECT *
FROM db_day02.student;

SELECT *
FROM db_day02.department;

DROP TABLE db_day02.student;
DROP TABLE db_day02.department;

UPDATE db_day02.student SET name = 'Jerry' WHERE id = 1;

TRUNCATE db_day02.student;

DESC db_day02.student; -- DESC describe 描述\ [dɪ'skraɪb]

show VARIABLES like 'char%';