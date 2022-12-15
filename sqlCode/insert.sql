# inset 语句
CREATE TABLE t5 ( id INT, `name` VARCHAR ( 32 ), `address` VARCHAR ( 32 ), longin_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
ON UPDATE CURRENT_TIMESTAMP );

INSERT INTO t5 (id, `name`, `address`) values (12, '小钱', '北京市朝阳区');

SELECT * FROM t5

DESC employee

INSERT INTO employee ( id, `name`, birthday, entry_date, job, Salary, resume, img ) VALUES ( 12, '李华', '2001-01-01', '2022-02-03 12:12:12', '英语作文杀手', 3000, '英语作文的常客, 喜欢搞别人心态', '不告诉你长什么样子')

INSERT INTO employee ( id, `name`, birthday, entry_date, job, Salary, resume, img ) VALUES ( 12, '张兵南', '2001-01-01', '2022-03-03 12:12:12', '杀人高书', 3000, '喜欢欧力给', '你方一个试试')

SELECT * FROM 	employee

ALTER TABLE employee 
				ADD longin_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
				AFTER entry_date
				
	desc employee
