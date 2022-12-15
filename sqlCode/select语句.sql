
create table student(
	id int not null default 1,
	name varchar(20) not null default '',
	chinese float not null default 0.0,
	english float not null default 0.0,
	math float not null default 0.0
);


insert into student(id,name,chinese,english,math) values(1,'韩顺平',89,78,90);
insert into student(id,name,chinese,english,math) values(2,'张飞',67,98,56);
insert into student(id,name,chinese,english,math) values(3,'宋江',87,78,77);
insert into student(id,name,chinese,english,math) values(4,'关羽',88,98,90);
insert into student(id,name,chinese,english,math) values(5,'赵云',82,84,67);
insert into student(id,name,chinese,english,math) values(6,'欧阳锋',55,85,45);
insert into student(id,name,chinese,english,math) values(7,'黄蓉',75,65,30);

# 查询表中所有字段的信息
SELECT * FROM student
# 查询表中包字段的信息， 并去重    去重标准 ：都相同才去包括name和english
SELECT DISTINCT `name`, english FROM student



# 别名和运算  
#名字太长， 可以起别名
SELECT `name`, (english + math + chinese) FROM student
# 总分加10
SELECT `name`, (english + math + chinese + 10) FROM student
# 别名
SELECT `name` AS '姓名', (english + math + chinese ) AS 'total_score' FROM student
