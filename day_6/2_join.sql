-- join

-- ename - emp
-- dname - dept

SELECT
  e.ename,
  d.dname
FROM scott.emp e
  INNER JOIN scott.dept d
    ON e.DEPTNO = d.DEPTNO; --

SELECT
  e.ename,
  e.deptno,
  d.dname
FROM scott.emp e
  INNER JOIN scott.dept d
    ON e.DEPTNO = d.DEPTNO;

-- N tables JOIN ON: N-1

SELECT
  e.ename,
  d.dname
FROM scott.emp e CROSS JOIN scott.dept d; -- CROSS JOIN 交叉查询 笛卡尔积 16*4=64

SELECT *
FROM scott.emp;

--

SELECT
  e.ename,
  d.dname
FROM scott.emp e LEFT OUTER JOIN scott.dept d
    ON e.DEPTNO = d.DEPTNO
UNION -- 并集
SELECT
  e.ename,
  d.dname
FROM scott.emp e RIGHT OUTER JOIN scott.dept d
    ON e.DEPTNO = d.DEPTNO;

SELECT
  ENAME,
  DEPTNO
FROM scott.emp
WHERE DEPTNO = 20 OR DEPTNO = 30
UNION ALL
SELECT
  ENAME,
  DEPTNO
FROM scott.emp
WHERE DEPTNO = 20;