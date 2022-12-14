# 指令创建表
# 创建表时，要根据需保存的数据创建相立的列，并根据数据的类型定义相立的列类
# id        整形
# name      字符串
# password  字字符串
# birthday  日期
CREATE TABLE `user` (
id INT,
`name` VARCHAR(255),
`birthday` VARCHAR(255)
) CHARACTER SET utf8 COLLATE utf8_bin ENGINE INNODB