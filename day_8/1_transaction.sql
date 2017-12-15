SELECT *
FROM scott.emp;

START TRANSACTION;

DELETE FROM scott.emp; -- DML

ROLLBACK; -- 回滚

-- -----------
START TRANSACTION;

/*
UPDATE user_table
SET money = money - 1000
WHERE name = 'jerry'
*/

/*
UPDATE user_table
SET money = money + 1000
WHERE name = 'tom'
*/

ROLLBACK;
COMMIT; -- 提交


START TRANSACTION;

SELECT *
FROM scott.emp;

UPDATE scott.emp
SET job = 'clerk'
WHERE EMPNO = 1111;

SAVEPOINT a; -- 设置保留点，a

DELETE FROM scott.emp
WHERE EMPNO = 2222;

SAVEPOINT b;

INSERT INTO scott.emp (EMPNO, ENAME) VALUE (9999, 'TOM');

SAVEPOINT c;

DELETE FROM scott.emp;

ROLLBACK;
COMMIT;

ROLLBACK TO c; -- 回滚到一个保留点
ROLLBACK TO b;
ROLLBACK TO a;
ROLLBACK;