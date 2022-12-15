# 相关的运算符
-- 查询姓名为赵云的学生成绩
SELECT * FROM student
				WHERE `name` = '赵云'
-- 查询英语成绩大于90分的同学
SELECT * FROM student 
				WHERE english > 90
-- 查询总分大于200分的所有同学
SELECT * FROM student
					WHERE (chinese + english + math) > 200
					

■查询math大于60并且(and)id大于4的学生成绩
SELECT `name`, math AS '数学成绩' FROM student
				WHERE math > 60 AND id > 4
■查询英语成绩大于语文成绩的同学
SELECT * FROM student
				WHERE english > chinese
■查询总分大于200分并且数学成绩小于语文成绩，的
姓韩的学生

# 这里写 like '韩%' 表示以韩开头的就可以
SELECT * FROM student
				WHERE ( chinese + math  + english ) > 200 AND chinese > math AND `name` LIKE '赵%'
				
SELECT * FROM student
课堂练习
1.查询英语分数在80-90之间的同学。
SELECT * FROM student 
				WHERE english >= 80 AND english <= 90
2.查询数学分数为89,90,91的同学。
SELECT * FROM student 
				WHERE math IN (89, 90, 91)
3.查询所有姓李的学生成绩。
SELECT * FROM student
				WHERE `name` LIKE '李%'
4.查询数学分>80，语文分>80的同学。
SELECT * FROM student
					WHERE math > 80 AND chinese > 80




课堂练习[学员自己练习]
1.查询语文分数在70-80之间的同学。between and 
SELECT * FROM student
				WHERE chinese BETWEEN 70 AND 80
				
2.查询总分为189,190,191的同学。

SELECT * FROM student
WHERE ( chinese + english + math ) IN (189, 190, 191)
3.查询所有姓李或者姓宋的学生成绩。
SELECT * FROM student
			WHERE `name` LIKE '李%' OR `name` LIKE '宋%'
4.查询数学比语文多30分的同学。			
select * FROM student
				WHERE ( math - chinese ) > 30
				
				
				
				
				
				
				
				
				
				
				
				
				
				