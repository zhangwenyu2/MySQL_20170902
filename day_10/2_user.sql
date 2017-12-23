-- 2: 设计一个能够简单实现用户注册、登录、注销的数据库表结构

DROP DATABASE IF EXISTS db;
CREATE DATABASE db;

DROP TABLE IF EXISTS db.user;
CREATE TABLE db.user (
  id       INT  AUTO_INCREMENT PRIMARY KEY
  COMMENT 'id PK',
  email    VARCHAR(191) NOT NULL UNIQUE
  COMMENT 'email',
  username VARCHAR(255) NOT NULL
  COMMENT 'username',
  password VARCHAR(255) NOT NULL
  COMMENT 'password',
  role     VARCHAR(255) NOT NULL DEFAULT 'user'
  COMMENT 'role: user; admin'
)
  COMMENT 'user table';

DROP TABLE IF EXISTS db.message;
CREATE TABLE db.message (
  id      INT     AUTO_INCREMENT PRIMARY KEY
  COMMENT 'id PK',
  content TEXT     NULL
  COMMENT 'content',
  time    DATETIME NOT NULL DEFAULT now(),
  userId  INT COMMENT 'user id FK'
)
  COMMENT 'message table';

ALTER TABLE db.message
  ADD CONSTRAINT
  message_fk_userId
FOREIGN KEY (userId)
REFERENCES db.user (id);


INSERT INTO db.user VALUE (NULL, 'tom@qq.com', 'Tom', '123', 'user');
INSERT INTO db.user VALUE (NULL, 'jerry@qq.com', 'Jerry', '456', 'user');

SELECT *
FROM db.user;

-- sign up
INSERT INTO db.user (email, username, password) VALUE ('tester@test.com', 'tester', 'abc');

-- sign in
SELECT *
FROM db.user
WHERE email = 'tester@test.com' AND password = 'abc';

-- sign out

-- 3: 在题 2 的基础上，实现用户留言功能

-- leave message
INSERT INTO db.message (content, userId) VALUE ('留言一。。。', 1);
INSERT INTO db.message (content, userId) VALUE ('留言二。。。', 2);
INSERT INTO db.message (content, userId) VALUE ('留言三。。。', 2);

SELECT *
FROM db.message;

-- 4: 在题 3 的基础上，添加管理员管理留言功能，管理员无须注册，使用 SQL 初始化
-- add admin
INSERT INTO db.user VALUE (NULL, 'admin@gmail.com', 'Scott', '789', 'admin');

-- admin sign in
SELECT *
FROM db.user
WHERE email = 'admin@gmail.com' AND password = '789';

-- role: user - user.html; admin - admin.html

-- list all messages
SELECT
  u.username,
  m.id,
  m.content,
  m.time
FROM db.user u INNER JOIN db.message m
    ON u.id = m.userId;

-- admin delete a message
DELETE FROM db.message
WHERE id = 1;
