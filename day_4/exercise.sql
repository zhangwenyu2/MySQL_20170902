#  1. 查找部门 30 中员工的详细信息
SELECT *
FROM scott.emp
WHERE DEPTNO=30;

# 2. 找出从事 clerk 工作的员工的编号、姓名、部门号
SELECT
  EMPNO,
  ENAME,
 DEPTNO
FROM scott.emp
WHERE JOB='CLERK';

# 3. 检索出奖金多于基本工资的员工信息
SELECT *
FROM scott.emp
WHERE SAL>1000;

# 4. 检索出奖金多于基本工资 30% 员工信息
SELECT *
FROM scott.emp
WHERE SAL>(1000*1.3);

# 5. 希望看到 10 部门的经理或者 20 部门的职员 clerk 的信息
SELECT *
FROM scott.emp
WHERE (DEPTNO=10 AND JOB='manager') OR (DEPTNO=20 AND JOB='clerk');

# 6. 找出 10 部门的经理、20 部门的职员或者既不是经理也不是职员但是高于 2000 元的员工信息
SELECT *
FROM scott.emp
WHERE (DEPTNO=10 AND JOB='manager') OR (DEPTNO=20 AND JOB='clerk') OR (JOB NOT IN ('clerk', 'manager') AND SAL>2000);

# 7. 找出获得奖金的员工的工作
SELECT
  JOB
FROM scott.emp
WHERE COMM IS NOT NULL;

# 8. 找出奖金少于 100 或者没有获得奖金的员工的信息
SELECT *
FROM scott.emp
WHERE COMM IS NULL OR COMM<100;

# 9. 查找员工雇佣日期是当月的最后一天的员工信息(wrong)
SELECT *
FROM scott.emp
WHERE (HIREDATE LIKE '%30');

# 10. 检索出雇佣年限超过 35 年的员工信息
SELECT *
FROM scott.emp
WHERE (CURRENT_DATE-HIREDATE)>35*365;

# 11. 找出姓名以 A、B、S 开始的员工信息
SELECT *
FROM scott.emp
WHERE ENAME LIKE  'a%' OR  ENAME LIKE 'b%' OR  ENAME LIKE 'c%';

# 12. 找到名字长度为 4 个字符的员工信息

# 13. 名字中不包含 R 字符的员工信息
SELECT *
FROM scott.emp
WHERE ENAME  NOT  LIKE '%r%';

# 14. 找出员工名字的前3个字符
# 15. 将名字中 A 改为 a
# 16. 将员工的雇佣日期拖后 10 年


# 17. 返回员工的详细信息并按姓名排序
SELECT *
FROM scott.emp
ORDER BY ENAME;

# 18. 返回员工的信息并按员工的工作年限降序排列
SELECT *
FROM scott.emp
ORDER BY HIREDATE DESC;

# 19. 返回员工的信息并按工作降序、工资升序排列
SELECT *
FROM scott.emp
ORDER BY JOB DESC, SAL;

# 20. 返回员工的姓名、雇佣年份和月份，并按月份和雇佣日期排序
SELECT
  ENAME,
  YEAR(HIREDATE),
  MONTH(HIREDATE) month
FROM scott.emp
ORDER BY month AND DAY(HIREDATE);

# 21. 计算员工的日薪，每月按 30 天
SELECT SAL/30 月工资
FROM scott.emp;

# 22. 找出 2 月份雇佣的员工
SELECT *
FROM scott.emp
WHERE MONTH(HIREDATE)=2;

# 23. 至今为止，员工被雇佣的天数

# 24. 找出姓名中包含 A 的员工信息
SELECT *
FROM scott.emp
WHERE ENAME LIKE '%a%';

# 25. 计算出员工被雇佣了多少年、多少月、多少日
