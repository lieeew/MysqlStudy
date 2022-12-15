 # delete语句
 
 
 DELETE FROM emp WHERE user_name = '小妖' 

 SELECT * FROM emp
 
 12	小妖		2022-12-12	2023-12-12	巡山	7000	巡山就完了	
 
 INSERT INTO emp(id, user_name, sex, birthday, job, salary, resume, image) VALUES (1, '小妖', '男', '2022-12-12', '巡山', 7000, '报答恩情', 'd:\picture.jpg')
 
 DESC emp
 
 ALTER TABLE emp MODIFY entry_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
 
 DELETE FROM emp 
				WHERE id = 2
				
drop emp