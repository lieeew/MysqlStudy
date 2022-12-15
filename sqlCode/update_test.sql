# uodate 修改

DESC employee

INSERT INTO employee VALUES ( 2, '老妖', '男', '2000-12-12', '2022-12-12 12:12:12', '大学老师', 5000, '大学老师 + 建筑地领头羊', 'd:\beautiful.jpg');
-- 1.将所有员工薪水修改为5000元。
# 不加from关键字, 那么会修改所有的这个一帮不会使用
UPDATE employee 
			SET Salary = 6000
 
SELECT * FROM employee
-- 2.将姓名为小妖怪的员工薪水修改为3000元。
UPDATE employee
				SET salary = 2000
				WHERE id = 12 -- 这里也可以改为 user_name = '小妖'
				
-- 3.将老妖怪的薪水在原有基础上增加1000元。

UPDATE employee 
				SET salary = salary + 1000, salary = 100000
				WHERE user_name = '老妖'
				
RENAME TABLE employee to emp

DESC employee