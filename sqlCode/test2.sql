# 演示创建数据库
# 利用指令创建一个数据库 如果不指定字符集和校验规则用默认的
CREATE DATABASE hsp_dbo1;
# 删除数据库
DROP DATABASE hsp_dbo1;
# 创建一个指定utf8字符集的hsp_db02数据库
CREATE DATABASE hsp_dbo2 CHARACTER SET utf8 
# 创建一个指定utf8的字符集的hsp_db03的数据库 带有校对规则
CREATE DATABASE hsp_dbo3 CHARACTER SET utf8 COLLATE utf8_bin
# 校对规则 utf8_bin区分大小写 默认utf8_general_ci不区分大小写

#下面是一条查询sql, 
# SELECT 查询
# * 表示所有字段
# FROM 从哪个表
# WHERE 从哪个字段 NAME = 'tom' 查询名字为tom
SELECT * FROM t1
SELECT * FROM t1 WHERE NAME = 'tom'	
SELECT * FROM t1 WHERE NAME = 'tom'
select * from t1 WHERE NAME = 'tom'