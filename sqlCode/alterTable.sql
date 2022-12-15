
-- 员工表emp的上增加一个image列，varchar类型（要求在resume.后而）。
ALTER TABLE emp 
			ADD image VARCHAR(23) NOT NULL DEFAULT '' 
			AFTER resume 
ALTER TABLE emp 
			ADD sex CHAR(1) NOT NULL DEFAULT '' AFTER `NAME`

-- 修改job列，使其长度为60。
ALTER TABLE emp
			MODIFY job VARCHAR(60) not NULL DEFAULT ''
-- 删除sex列。
ALTER TABLE emp
				DROP sex
-- 表名改为employee。
RENAME TABLE emp TO employee
-- 修改表的字符集为utf8
ALTER TABLE emp 
				CHARACTER SET utf8
-- 列名name修改为user name
ALTER TABLE emp 
		CHANGE `NAME` `user_name`VARCHAR(32) NOT NULL DEFAULT ''
-- 查看表结构, 可以查看的列
DESC emp