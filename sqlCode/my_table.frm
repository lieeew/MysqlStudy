TYPE=VIEW
query=select `alisa_table`.`deptno` AS `deptno`,`alisa_table`.`ename` AS `ename`,`alisa_table`.`job` AS `job`,`alisa_table`.`dname` AS `dname`,`alisa_table`.`grade` AS `grade` from (select `hsp_dbo3`.`emp`.`deptno` AS `deptno`,`hsp_dbo3`.`emp`.`ename` AS `ename`,`hsp_dbo3`.`emp`.`job` AS `job`,`hsp_dbo3`.`dept`.`dname` AS `dname`,`hsp_dbo3`.`salgrade`.`grade` AS `grade` from `hsp_dbo3`.`emp` join `hsp_dbo3`.`dept` join `hsp_dbo3`.`salgrade` where ((`hsp_dbo3`.`emp`.`deptno` = `hsp_dbo3`.`dept`.`deptno`) and (`hsp_dbo3`.`emp`.`sal` >= `hsp_dbo3`.`salgrade`.`losal`) and (`hsp_dbo3`.`emp`.`sal` <= `hsp_dbo3`.`salgrade`.`hisal`))) `alisa_table`
md5=0101bf2ac37531fa895ac04c0f941164
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2023-01-07 04:12:09
create-version=1
source=SELECT deptno, ename, job, dname, grade\nFROM (\nSELECT emp.deptno, ename, job, dname, grade\nFROM emp, dept, salgrade\nWHERE emp.deptno = dept.deptno\nAND emp.sal >= salgrade.losal \nAND emp.sal <= salgrade.hisal) alisa_table
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `alisa_table`.`deptno` AS `deptno`,`alisa_table`.`ename` AS `ename`,`alisa_table`.`job` AS `job`,`alisa_table`.`dname` AS `dname`,`alisa_table`.`grade` AS `grade` from (select `hsp_dbo3`.`emp`.`deptno` AS `deptno`,`hsp_dbo3`.`emp`.`ename` AS `ename`,`hsp_dbo3`.`emp`.`job` AS `job`,`hsp_dbo3`.`dept`.`dname` AS `dname`,`hsp_dbo3`.`salgrade`.`grade` AS `grade` from `hsp_dbo3`.`emp` join `hsp_dbo3`.`dept` join `hsp_dbo3`.`salgrade` where ((`hsp_dbo3`.`emp`.`deptno` = `hsp_dbo3`.`dept`.`deptno`) and (`hsp_dbo3`.`emp`.`sal` >= `hsp_dbo3`.`salgrade`.`losal`) and (`hsp_dbo3`.`emp`.`sal` <= `hsp_dbo3`.`salgrade`.`hisal`))) `alisa_table`
