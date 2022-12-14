# 练习 备份和恢复

# 备份  必须在dos下执行 执行mysqldump 指令其实就在mysql的安装目录\bin下面
#  这个被封文件, 就对应着sql语句
mysqldump -u root -p -B hsp_dbo2 hsp_dbo3 > e:\\bak.sql

DROP DATABASE hsp_dbo2;

# 恢复数据库 语句需要在sql中运行  
source e:\\bak.sql
# 方法二: 可以直接复制粘贴运行

# 备份某个数据库的某一个表
mysqldump -u 用户名 -p密码 数据库 表一 表二 > 位置 (文件名.sql)
