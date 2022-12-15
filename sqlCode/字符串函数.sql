-- CHARSET(str)返回字串字符集
SELECT CHARSET(ename) FROM emp
-- CONCAT (string) [,..]连接字串
SELECT CONCAT(ename,'  job is  ', job) FROM emp;
-- INSTR(string ,substring)返回substring在string中出现的位置，没有返回O
SELECT instr('hsp','h') FROM  DUAL
-- UCASE (string)转换成大写
SELECT UCASE(ename) FROM emp
-- LCASE (string)转换成小写
SELECT LCASE(ename) FROM emp
-- LEFT(string),length从string 中的左边第一个起取length个字符, 不写length就取到最后
SELECT LEFT('java_study',3) FROM DUAL
select RIGHT(ename,3) FROM emp; -- 从右边取
-- LENGTH (string)string长度[按照字节]
SELECT LENGTH(ename) FROM emp
SELECT LENGTH('韩顺平') FROM DUAL --  结果是9
SELECT 	LENGTH('HSP') FROM DUAL -- 结果是3
-- REPLACE (str ,search str)在str中用replace_str替换search_strreplace_str
SELECT `ename`,REPLACE(job ,'MANAGER','经理') FROM emp;
-- STRCMP(string1,string)逐字符比较两字串大小，
SELECT STRCMP('HSP','asp') 
-- SUBSTRING (str,position [,length从str的position开始【从1开始计算】，取length])个字符
SELECT SUBSTRING('On java book ', 2) FROM DUAL -- 空格也计算在内, 不谢长度取到最后
-- LTRIM (string) RTRIM(string)去除前端空格或后端空格
SELECT LTRIM('  onjava  ') FROM DUAL;
SELECT RTRIM('  onjava  ') FROM DUAL;
-- trim 去除两端的空格 
SELECT TRIM('  onjava  ') FROM DUAL;



# 思考题 输出以首字母小写的方式输出员工的ename

-- 使用连接的方式进行搞  sMISTH 
SELECT CONCAT(SUBSTRING(LCASE(ename),1 , 1), SUBSTRING(ename, 2)) FROM emp
 

-- 使用replace() 替代搞起来
SELECT REPLACE(ename,SUBSTRING(ename, 1, 1),LCASE(SUBSTRING(ename, 1, 1))) FROM emp
SELECT REPLACE(ename,LEFT(ename,1),LCASE(SUBSTRING(ename, 1, 1))) FROM emp


