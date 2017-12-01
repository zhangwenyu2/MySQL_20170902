-- DDL = Data Definition Language
-- CREATE 创建\ [kriː'eɪt]
-- DROP 下降\ [drɒp]
-- ALTER 改变\ ['ɔːltə\;\ 'ɒl-]

CREATE DATABASE db_day01;

CREATE TABLE db_day01.student (
  id     INT COMMENT '序号',
  name   VARCHAR(20) COMMENT '姓名',
  gender CHAR(1) COMMENT '性别',
  age    INT COMMENT '年龄',
  height DOUBLE(3, 2) COMMENT '身高', -- 1.75
  fee    DECIMAL(6, 2) COMMENT '学费', -- 小数\ ['desɪm\(ə\)l]
  dob    DATE COMMENT '出生日期' -- date of birth
)
  COMMENT '学生表';

SELECT *
FROM db_day01.student;

INSERT INTO db_day01.student VALUE (1, 'Tom', 'M', 18, 1.75, 1234.56, '1999-1-2');

USE db_day01;

SHOW TABLES;

-- show column comment
SHOW FULL COLUMNS FROM db_day01.student;
-- show table comment
SHOW TABLE STATUS FROM db_day01;

DROP TABLE db_day01.student;
DROP DATABASE db_day01;