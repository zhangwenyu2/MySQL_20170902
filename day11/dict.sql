DROP DATABASE IF EXISTS db;
CREATE DATABASE db;

DROP TABLE IF EXISTS db.dict1;
CREATE TABLE db.dict1(
  id INT AUTO_INCREMENT PRIMARY KEY
  COMMENT 'id PK',
  chinese TEXT     NULL
  COMMENT 'Chinese')
COMMENT '汉语';

DROP TABLE IF EXISTS db.dict2;
CREATE TABLE db.dict2(
  id INT AUTO_INCREMENT PRIMARY KEY
  COMMENT 'id PK',
  english TEXT     NULL
  COMMENT 'English',
  wordId  INT 
  COMMENT 'word id FK')
  COMMENT '英语';

ALTER TABLE db.dict2
  ADD CONSTRAINT
 dict2_fk_wordId
FOREIGN KEY (wordId)
REFERENCES db.dict1 (id);

INSERT INTO db.dict1 VALUE (NULL, '母亲');
INSERT INTO db.dict1 VALUE (NULL, '小熊');

SELECT *
FROM db.dict1;

INSERT INTO db.dict2 VALUE (NULL,'mother', 1);
INSERT INTO db.dict2 VALUE (NULL,'bear', 2);

SELECT
  c.chinese,
  e.english,
  e.wordId
  
FROM db.dict1 c INNER JOIN db.dict2 e
    ON c.id = e.wordId;
