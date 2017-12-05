-- DML
-- INSERT
-- UPDATE
-- DELETE

INSERT INTO db_day04.employee VALUE (NULL, 'Tom', 18, '2016-1-1', 'M', NULL);

INSERT INTO db_day04.employee (name, hiredate) VALUE ('Jerry', '2017-1-1');

INSERT INTO db_day04.employee (name, hiredate)
  VALUE ('name1', '2017-1-1'), ('name2', '2017-1-1'), ('name3', '2017-1-1');


UPDATE db_day04.employee
SET age = 19, gender = 'F'
WHERE id = 2;

UPDATE db_day04.employee
SET gender = 'M'
WHERE gender IS NULL;

DELETE FROM db_day04.employee
WHERE name LIKE '%name%';

SELECT *
FROM db_day04.employee;

DROP DATABASE db_day04;

SHOW DATABASES ;

SHOW tables FROM scott;
