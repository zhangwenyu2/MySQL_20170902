-- DDL Data Definition Language
-- CREATE
-- DROP
-- ALTER

DROP TABLE IF EXISTS db_day03.student;
CREATE TABLE db_day03.student (
  id     INT AUTO_INCREMENT PRIMARY KEY
  COMMENT 'id PK',
  name   VARCHAR(255) NOT NULL
  COMMENT 'name',
  gender CHAR(1)      NOT NULL
  COMMENT 'gender'
)
  COMMENT 'student table';

-- 1
ALTER TABLE db_day03.new_student
  RENAME db_day03.student;

-- 2
ALTER TABLE db_day03.student
  ADD COLUMN addr VARCHAR(255);

ALTER TABLE db_day03.student
  ADD COLUMN married INT(1) NOT NULL
  AFTER gender;

-- 3
ALTER TABLE db_day03.student
  DROP COLUMN married;

-- 4
ALTER TABLE db_day03.student
  MODIFY COLUMN gender VARCHAR(255) NOT NULL
  AFTER addr;

-- 5
ALTER TABLE db_day03.student
  CHANGE addr address VARCHAR(255);

-- 6
ALTER TABLE db_day03.employee
  DROP FOREIGN KEY employee_fk_departmentId;

INSERT INTO db_day03.student VALUE (NULL, 'Tom', 'M');
INSERT INTO db_day03.student VALUE (NULL, 'Jerry', 'Beijing', 'Female');

SELECT *
FROM db_day03.student;

SHOW TABLES FROM db_day03;

INSERT INTO db_day03.employee VALUE (NULL, 'Scott', '1990-1-1', 9999);

SELECT *
FROM db_day03.employee;