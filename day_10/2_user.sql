-- 设计一个能够简单实现用户注册、登录、注销的数据库表结构

DROP DATABASE IF EXISTS db;
CREATE DATABASE db;

DROP TABLE IF EXISTS db.user;
CREATE TABLE db.user (
  id       INT AUTO_INCREMENT PRIMARY KEY
  COMMENT 'id PK',
  email    VARCHAR(191) NOT NULL UNIQUE
  COMMENT 'email',
  username VARCHAR(255) NOT NULL
  COMMENT 'username',
  password VARCHAR(255) NOT NULL
  COMMENT 'password'
)
  COMMENT 'user table';

INSERT INTO db.user VALUE (NULL, 'tom@qq.com', 'Tom', '123');
INSERT INTO db.user VALUE (NULL, 'jerry@qq.com', 'Jerry', '456');

SELECT *
FROM db.user;

-- sign up
INSERT INTO db.user VALUE (NULL, 'tester@test.com', 'tester', 'abc');

-- sign in
SELECT *
FROM db.user
WHERE email = 'tester@test.com' AND password = 'abc';

-- sign out

-- 1, 2, 3, 4