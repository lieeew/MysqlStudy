


CREATE TABLE emp (
			id int,
			`name` VARCHAR(32),
			sex CHAR(1),
			birthday DATE,
			entry_date DATETIME,
			job VARCHAR(32),
			Salary DOUBLE,
			resume TEXT -- resume 描述
) CHARACTER SET utf8 COLLATE utf8_bin ENGINE INNODB

SELECT * FROM emp



ALTER TABLE emp
			ADD img VARCHAR( 255 ) NOT NULL DEFAULT ''
			AFTER resume
ALTER TABLE emp
		MODIFY job VARCHAR( 255 ) not null default ''

ALTER TABLE emp 
		DROP sex
		
RENAME TABLE emp TO employee
DESC employee

DESC emp
