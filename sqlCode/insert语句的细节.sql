
-- 插入的数据应与字段的数据类型相同。
CREATE TABLE goods (
			id INT,
			`name` VARCHAR(10),
			price DOUBLE)
-- 比如把'abc'添加到INT类型会错误
INSERT INTO goods (id, `name`, price) VALUES ( 1, '华为手机', 2000)
INSERT INTO goods (id, `name`, price) VALUES ('abc', '锤子手机', 4000) -- 这个就会报错
INSERT INTO goods (id , `name`, price) VALUES ('2', '小米手机', 1000)

-- 2.数据的长度立在列的规定范围内，例如：不能将一个长度为80的字符串加入到长度为40的列中。
INSERT INTO goods VALUES (3, 'ibmib,ib,mibmindasd', 100) -- Data too long for column 'name'

-- 3.在va1ues中列出的数据位置必须与被加入的列的排列位置相对立。
INSERT INTO goods (`name`, id, price) VALUES ('IBM手机', 3, 8000)
-- 4.字符和日期型数据立包含在单引号中。
CREATE TABLE goods2 (
				id INT,
				address VARCHAR(10) NOT NULL DEFAULT '北京市',
				login_time TIMESTAMP NOT null DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP)
				
INSERT INTO goods2 ( id ) VALUES (1)
SELECT * FROM goods2
-- 5.列可以插入空值[前提是该字段允许为空]，insert INTO TABLE VALUE(NULL)
INSERT INTO goods (id, `name`, price) values (5 , NULL, NULL)
-- 6.INSERT INTO tab name(列名..)VALUES(),(),()形式添加多条记录
INSERT INTO goods VALUES (6, '一加手机', 6000), (7, '惠普', 12000);
-- 7.如果是给表中的所有字段添加数据，可以不写前面的字段名称
INSERT INTO goods VALUES (8, '苹果手机', 20000)
-- 8.默认值的使用，当不给某个字段值时，如果有默认值就会添加，否则报错

DESC  goods2
SELECT * FROM goods