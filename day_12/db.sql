--  实现一个工作日志系统的数据库表设计

DROP DATABASE IF EXISTS db;
CREATE DATABASE db;

DROP TABLE IF EXISTS db.user;
CREATE TABLE db.user (
  id       INT AUTO_INCREMENT PRIMARY KEY
  COMMENT 'id PK',
  username VARCHAR(255) NOT NULL
  COMMENT 'username',
  password VARCHAR(255) NOT NULL
  COMMENT 'password',
  team     VARCHAR(255) NOT NULL
  COMMENT 'team：第一组，第二组，第三组',
  role     VARCHAR(255) NOT NULL
  COMMENT 'role: 组员，组长'
)
  COMMENT 'user table';


DROP TABLE IF EXISTS db.log;
CREATE TABLE db.log (
  id      INT AUTO_INCREMENT PRIMARY KEY
  COMMENT 'id PK',
  content TEXT NOT NULL
  COMMENT 'content',
  time    DATE NOT NULL
  COMMENT 'time',
  userId  INT COMMENT 'user id FK'
)
  COMMENT 'log table';


ALTER TABLE db.log
  ADD CONSTRAINT
  log_fk_userId
FOREIGN KEY (userId)
REFERENCES db.user (id);

-- user sign up

INSERT INTO db.user VALUE (NULL, 'Tom', '123', '第一组', '组员');
INSERT INTO db.user VALUE (NULL, 'Jerry', '123', '第二组', '组长');
INSERT INTO db.user VALUE (NULL, 'Scott', '123', '第一组', '组长');

-- user sign in

SELECT *
FROM db.user
WHERE username = 'tom' AND password = '123';

-- publish log

-- team member log list

-- team leader log list

-- team leader query
