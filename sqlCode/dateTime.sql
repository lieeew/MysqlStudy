# 时间类
CREATE TABLE t15 (birthday DATE, job_time DATETIME, longin_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
ON UPDATE CURRENT_TIMESTAMP) -- 登录时间如果想要自动更新的话需要写这句话

INSERT INTO t15 (birthday, job_time) VALUES ('2022-11-12', '2022-11-11 10:10:10') 

SELECT * FROM 	t15

DROP TABLE t15