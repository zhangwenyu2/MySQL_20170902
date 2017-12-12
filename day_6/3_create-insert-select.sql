CREATE TABLE scott.new_emp -- DDL
    SELECT -- DQL
      ename,
      hiredate
    FROM scott.emp;

SELECT *
FROM scott.new_emp;

CREATE TABLE scott.test_emp (
  empno INT(4) PRIMARY KEY
);

DESC scott.emp;

SELECT *
FROM scott.test_emp;

INSERT INTO scott.test_emp VALUE (1111);

INSERT INTO scott.test_emp -- DML
  SELECT EMPNO -- DQL
  FROM scott.emp
  WHERE EMPNO <> 1111;