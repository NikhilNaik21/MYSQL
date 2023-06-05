show databases;
 use cdac;
  show tables;
  //date + time
   select now();
   //shows date
   select current_date();
    select curdate();
    source D:\Nashik03-04-2023\MYSQL_D\file.sql;
    //update salary to 50000 where ename=shekhar
 update emp set salary =50000 where ename='shekhar';
    update emp set dob = NULL where Emp_name='farheen';
    update emp set dob = NULL where Emp_name='-';
    //to change existing column name
     alter table emp rename column ename to Emp_name;
mysql> use cdac
Database changed
mysql> desc emp;
+----------+---------------+------+-----+---------+-------+
| Field    | Type          | Null | Key | Default | Extra |
+----------+---------------+------+-----+---------+-------+
| empno    | int           | NO   | PRI | NULL    |       |
| Emp_name | varchar(20)   | YES  |     | NULL    |       |
| pan      | char(10)      | YES  |     | NULL    |       |
| dob      | date          | YES  |     | NULL    |       |
| salary   | decimal(10,2) | YES  |     | NULL    |       |
+----------+---------------+------+-----+---------+-------+
5 rows in set (0.07 sec)

mysql> select * from emp;
+-------+----------+------------+------------+----------+
| empno | Emp_name | pan        | dob        | salary   |
+-------+----------+------------+------------+----------+
|   100 | Shekhar  | BGRPN10000 | 1998-05-21 | 50000.00 |
|   200 | Farheen  |            | NULL       | 30000.00 |
|   300 | Nikhil   | BGRP18427  | 1979-10-29 |  5000.00 |
|   400 | Nikhil   | BGRP18427  | 1979-10-29 |  5000.00 |
|   500 | yatin    | p007       | 1979-10-29 |  5000.00 |
+-------+----------+------------+------------+----------+
5 rows in set (0.02 sec)

mysql> insert into emp values(600,'varad',null,null,90000);
Query OK, 1 row affected (0.03 sec)

mysql> insert into emp values(700,'Pradip',null,null,45666);
Query OK, 1 row affected (0.01 sec)

mysql> select * from emp;
+-------+----------+------------+------------+----------+
| empno | Emp_name | pan        | dob        | salary   |
+-------+----------+------------+------------+----------+
|   100 | Shekhar  | BGRPN10000 | 1998-05-21 | 50000.00 |
|   200 | Farheen  |            | NULL       | 30000.00 |
|   300 | Nikhil   | BGRP18427  | 1979-10-29 |  5000.00 |
|   400 | Nikhil   | BGRP18427  | 1979-10-29 |  5000.00 |
|   500 | yatin    | p007       | 1979-10-29 |  5000.00 |
|   600 | varad    | NULL       | NULL       | 90000.00 |
|   700 | Pradip   | NULL       | NULL       | 45666.00 |
+-------+----------+------------+------------+----------+
7 rows in set (0.00 sec)

mysql>  insert into emp(empno,emp_name) values (800,'Sahil');
Query OK, 1 row affected (0.01 sec)

mysql>  insert into emp(empno,emp_name) values (900,'Akash');
Query OK, 1 row affected (0.01 sec)

mysql>  insert into emp(empno,emp_name) values (1000,'Suresh');
Query OK, 1 row affected (0.01 sec)

mysql> select * from emp;
+-------+----------+------------+------------+----------+
| empno | Emp_name | pan        | dob        | salary   |
+-------+----------+------------+------------+----------+
|   100 | Shekhar  | BGRPN10000 | 1998-05-21 | 50000.00 |
|   200 | Farheen  |            | NULL       | 30000.00 |
|   300 | Nikhil   | BGRP18427  | 1979-10-29 |  5000.00 |
|   400 | Nikhil   | BGRP18427  | 1979-10-29 |  5000.00 |
|   500 | yatin    | p007       | 1979-10-29 |  5000.00 |
|   600 | varad    | NULL       | NULL       | 90000.00 |
|   700 | Pradip   | NULL       | NULL       | 45666.00 |
|   800 | Sahil    | NULL       | NULL       |     NULL |
|   900 | Akash    | NULL       | NULL       |     NULL |
|  1000 | Suresh   | NULL       | NULL       |     NULL |
+-------+----------+------------+------------+----------+
10 rows in set (0.00 sec)

mysql> update emp set pan='BGRPN74636',dob='2004-07-21' where empno=800;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from emp;
+-------+----------+------------+------------+----------+
| empno | Emp_name | pan        | dob        | salary   |
+-------+----------+------------+------------+----------+
|   100 | Shekhar  | BGRPN10000 | 1998-05-21 | 50000.00 |
|   200 | Farheen  |            | NULL       | 30000.00 |
|   300 | Nikhil   | BGRP18427  | 1979-10-29 |  5000.00 |
|   400 | Nikhil   | BGRP18427  | 1979-10-29 |  5000.00 |
|   500 | yatin    | p007       | 1979-10-29 |  5000.00 |
|   600 | varad    | NULL       | NULL       | 90000.00 |
|   700 | Pradip   | NULL       | NULL       | 45666.00 |
|   800 | Sahil    | BGRPN74636 | 2004-07-21 |     NULL |
|   900 | Akash    | NULL       | NULL       |     NULL |
|  1000 | Suresh   | NULL       | NULL       |     NULL |
+-------+----------+------------+------------+----------+
10 rows in set (0.00 sec)

mysql> desc emp;
+----------+---------------+------+-----+---------+-------+
| Field    | Type          | Null | Key | Default | Extra |
+----------+---------------+------+-----+---------+-------+
| empno    | int           | NO   | PRI | NULL    |       |
| Emp_name | varchar(20)   | YES  |     | NULL    |       |
| pan      | char(10)      | YES  |     | NULL    |       |
| dob      | date          | YES  |     | NULL    |       |
| salary   | decimal(10,2) | YES  |     | NULL    |       |
+----------+---------------+------+-----+---------+-------+
5 rows in set (0.05 sec)

mysql> create table temp(ename varchar(20) , empno int);
Query OK, 0 rows affected (0.07 sec)

mysql> insert into temp(ename,empno) values('sharad',2000),('mohan',3000);
Query OK, 2 rows affected (0.02 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from temp;
+--------+-------+
| ename  | empno |
+--------+-------+
| sharad |  2000 |
| mohan  |  3000 |
+--------+-------+
2 rows in set (0.00 sec)

mysql> drop table temp;
Query OK, 0 rows affected (0.02 sec)

mysql> desc temp;
ERROR 1146 (42S02): Table 'cdac.temp' doesn't exist
mysql>  \h

For information about MySQL products and services, visit:
   http://www.mysql.com/
For developer information, including the MySQL Reference Manual, visit:
   http://dev.mysql.com/
To buy MySQL Enterprise support, training, or other products, visit:
   https://shop.mysql.com/

List of all MySQL commands:
Note that all text commands must be first on line and end with ';'
?         (\?) Synonym for `help'.
clear     (\c) Clear the current input statement.
connect   (\r) Reconnect to the server. Optional arguments are db and host.
delimiter (\d) Set statement delimiter.
ego       (\G) Send command to mysql server, display result vertically.
exit      (\q) Exit mysql. Same as quit.
go        (\g) Send command to mysql server.
help      (\h) Display this help.
notee     (\t) Don't write into outfile.
print     (\p) Print current command.
prompt    (\R) Change your mysql prompt.
quit      (\q) Quit mysql.
rehash    (\#) Rebuild completion hash.
source    (\.) Execute an SQL script file. Takes a file name as an argument.
status    (\s) Get status information from the server.
system    (\!) Execute a system shell command.
tee       (\T) Set outfile [to_outfile]. Append everything into given outfile.
use       (\u) Use another database. Takes database name as argument.
charset   (\C) Switch to another charset. Might be needed for processing binlog with multi-byte charsets.
warnings  (\W) Show warnings after every statement.
nowarning (\w) Don't show warnings after every statement.
resetconnection(\x) Clean session context.
query_attributes Sets string parameters (name1 value1 name2 value2 ...) for the next query to pick up.
ssl_session_data_print Serializes the current SSL session data to stdout or file

For server side help, type 'help contents'

mysql> ?

For information about MySQL products and services, visit:
   http://www.mysql.com/
For developer information, including the MySQL Reference Manual, visit:
   http://dev.mysql.com/
To buy MySQL Enterprise support, training, or other products, visit:
   https://shop.mysql.com/

List of all MySQL commands:
Note that all text commands must be first on line and end with ';'
?         (\?) Synonym for `help'.
clear     (\c) Clear the current input statement.
connect   (\r) Reconnect to the server. Optional arguments are db and host.
delimiter (\d) Set statement delimiter.
ego       (\G) Send command to mysql server, display result vertically.
exit      (\q) Exit mysql. Same as quit.
go        (\g) Send command to mysql server.
help      (\h) Display this help.
notee     (\t) Don't write into outfile.
print     (\p) Print current command.
prompt    (\R) Change your mysql prompt.
quit      (\q) Quit mysql.
rehash    (\#) Rebuild completion hash.
source    (\.) Execute an SQL script file. Takes a file name as an argument.
status    (\s) Get status information from the server.
system    (\!) Execute a system shell command.
tee       (\T) Set outfile [to_outfile]. Append everything into given outfile.
use       (\u) Use another database. Takes database name as argument.
charset   (\C) Switch to another charset. Might be needed for processing binlog with multi-byte charsets.
warnings  (\W) Show warnings after every statement.
nowarning (\w) Don't show warnings after every statement.
resetconnection(\x) Clean session context.
query_attributes Sets string parameters (name1 value1 name2 value2 ...) for the next query to pick up.
ssl_session_data_print Serializes the current SSL session data to stdout or file

For server side help, type 'help contents'

mysql> drop table emp;
Query OK, 0 rows affected (0.01 sec)

mysql> drop table dept;
Query OK, 0 rows affected (0.01 sec)

mysql> CREATE TABLE DEPT(DEPTNO NUMERIC(2)  PRIMARY KEY,DNAME VARCHAR(14),LOC VARCHAR(13));
Query OK, 0 rows affected (0.02 sec)

mysql> INSERT INTO DEPT VALUES(10,'ACCOUNTING','NEW YORK');INSERT INTO DEPT VALUES(20,'RESEARCH','DALLAS');INSERT INTO DEPT VALUES(30,'SALES','CHICAGO');INSERT INTO DEPT VALUES(40,'OPERATIONS','BOSTON');
Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

mysql> select * from dept;
+--------+------------+----------+
| DEPTNO | DNAME      | LOC      |
+--------+------------+----------+
|     10 | ACCOUNTING | NEW YORK |
|     20 | RESEARCH   | DALLAS   |
|     30 | SALES      | CHICAGO  |
|     40 | OPERATIONS | BOSTON   |
+--------+------------+----------+
4 rows in set (0.00 sec)

mysql> CREATE TABLE EMP( EMPNO NUMERIC(4) PRIMARY KEY, ENAME VARCHAR(10), JOB   VARCHAR(9), MGR   NUMERIC(4),  HIREDATE DATE, SAL NUMERIC(7,2),         COMM NUMERIC(7,2),         DEPTNO NUMERIC(2)  REFERENCES DEPT(DEPTNO)      );
Query OK, 0 rows affected (0.02 sec)

mysql> INSERT INTO EMP VALUES(7369,'SMITH','CLERK',7902,'2012-02-02',800,NULL,20);INSERT INTO EMP VALUES(7499,'ALLEN','SALESMAN',7698,'2012-01-02',1600,300,30);INSERT INTO EMP VALUES(7521,'WARD','SALESMAN',7698,'2013-01-02',1250,500,30);INSERT INTO EMP VALUES(7566,'JONES','MANAGER',7839,'2013-01-02',2975,NULL,20);INSERT INTO EMP VALUES(7654,'MARTIN','SALESMAN',7698,'2012-05-02',1250,1400,30);INSERT INTO EMP VALUES(7698,'BLAKE','MANAGER',7839,'2012-01-06',2850,NULL,30);INSERT INTO EMP VALUES(7782,'CLARK','MANAGER',7839,'2012-01-06',2450,NULL,10);INSERT INTO EMP VALUES(7788,'SCOTT','ANALYST',7566,'2012-01-10',3000,NULL,20);INSERT INTO EMP VALUES(7839,'KING','PRESIDENT',NULL,'2012-01-15',5000,NULL,10);INSERT INTO EMP VALUES(7844,'TURNER','SALESMAN',7698,'2012-01-20',1500,0,30);INSERT INTO EMP VALUES(7876,'ADAMS','CLERK',7788,'2013-01-02',1100,NULL,20);INSERT INTO EMP VALUES(7900,'JAMES','CLERK',7698,'2012-03-02','950',NULL,30);INSERT INTO EMP VALUES(7902,'FORD','ANALYST',7566,'2012-04-02',3000,NULL,20);INSERT INTO EMP VALUES(7934,'MILLER','CLERK',7782,'2012-05-02',1300,NULL,10);
Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

mysql> select * from emp;
+-------+--------+-----------+------+------------+---------+---------+--------+
| EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL     | COMM    | DEPTNO |
+-------+--------+-----------+------+------------+---------+---------+--------+
|  7369 | SMITH  | CLERK     | 7902 | 2012-02-02 |  800.00 |    NULL |     20 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 2012-01-02 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN  | 7698 | 2013-01-02 | 1250.00 |  500.00 |     30 |
|  7566 | JONES  | MANAGER   | 7839 | 2013-01-02 | 2975.00 |    NULL |     20 |
|  7654 | MARTIN | SALESMAN  | 7698 | 2012-05-02 | 1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER   | 7839 | 2012-01-06 | 2850.00 |    NULL |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 2012-01-06 | 2450.00 |    NULL |     10 |
|  7788 | SCOTT  | ANALYST   | 7566 | 2012-01-10 | 3000.00 |    NULL |     20 |
|  7839 | KING   | PRESIDENT | NULL | 2012-01-15 | 5000.00 |    NULL |     10 |
|  7844 | TURNER | SALESMAN  | 7698 | 2012-01-20 | 1500.00 |    0.00 |     30 |
|  7876 | ADAMS  | CLERK     | 7788 | 2013-01-02 | 1100.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK     | 7698 | 2012-03-02 |  950.00 |    NULL |     30 |
|  7902 | FORD   | ANALYST   | 7566 | 2012-04-02 | 3000.00 |    NULL |     20 |
|  7934 | MILLER | CLERK     | 7782 | 2012-05-02 | 1300.00 |    NULL |     10 |
+-------+--------+-----------+------+------------+---------+---------+--------+
14 rows in set (0.00 sec)


mysql> source D:\Nashik03-04-2023\MYSQL_D\show.sql
+-------+--------+-----------+------+------------+---------+---------+--------+
| EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL     | COMM    | DEPTNO |
+-------+--------+-----------+------+------------+---------+---------+--------+
|  7369 | SMITH  | CLERK     | 7902 | 2012-02-02 |  800.00 |    NULL |     20 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 2012-01-02 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN  | 7698 | 2013-01-02 | 1250.00 |  500.00 |     30 |
|  7566 | JONES  | MANAGER   | 7839 | 2013-01-02 | 2975.00 |    NULL |     20 |
|  7654 | MARTIN | SALESMAN  | 7698 | 2012-05-02 | 1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER   | 7839 | 2012-01-06 | 2850.00 |    NULL |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 2012-01-06 | 2450.00 |    NULL |     10 |
|  7788 | SCOTT  | ANALYST   | 7566 | 2012-01-10 | 3000.00 |    NULL |     20 |
|  7839 | KING   | PRESIDENT | NULL | 2012-01-15 | 5000.00 |    NULL |     10 |
|  7844 | TURNER | SALESMAN  | 7698 | 2012-01-20 | 1500.00 |    0.00 |     30 |
|  7876 | ADAMS  | CLERK     | 7788 | 2013-01-02 | 1100.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK     | 7698 | 2012-03-02 |  950.00 |    NULL |     30 |
|  7902 | FORD   | ANALYST   | 7566 | 2012-04-02 | 3000.00 |    NULL |     20 |
|  7934 | MILLER | CLERK     | 7782 | 2012-05-02 | 1300.00 |    NULL |     10 |
+-------+--------+-----------+------+------------+---------+---------+--------+
14 rows in set (0.00 sec)

+--------+------------+----------+
| DEPTNO | DNAME      | LOC      |
+--------+------------+----------+
|     10 | ACCOUNTING | NEW YORK |
|     20 | RESEARCH   | DALLAS   |
|     30 | SALES      | CHICAGO  |
|     40 | OPERATIONS | BOSTON   |
+--------+------------+----------+
4 rows in set (0.00 sec)

mysql> select ename as 'Name is' ,sal as salary from emp;
+---------+---------+
| Name is | salary  |
+---------+---------+
| SMITH   |  800.00 |
| ALLEN   | 1600.00 |
| WARD    | 1250.00 |
| JONES   | 2975.00 |
| MARTIN  | 1250.00 |
| BLAKE   | 2850.00 |
| CLARK   | 2450.00 |
| SCOTT   | 3000.00 |
| KING    | 5000.00 |
| TURNER  | 1500.00 |
| ADAMS   | 1100.00 |
| JAMES   |  950.00 |
| FORD    | 3000.00 |
| MILLER  | 1300.00 |
+---------+---------+
14 rows in set (0.00 sec)

mysql> source D:\Nashik03-04-2023\MYSQL_D\show.sql
+-------+--------+-----------+------+------------+---------+---------+--------+
| EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL     | COMM    | DEPTNO |
+-------+--------+-----------+------+------------+---------+---------+--------+
|  7369 | SMITH  | CLERK     | 7902 | 2012-02-02 |  800.00 |    NULL |     20 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 2012-01-02 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN  | 7698 | 2013-01-02 | 1250.00 |  500.00 |     30 |
|  7566 | JONES  | MANAGER   | 7839 | 2013-01-02 | 2975.00 |    NULL |     20 |
|  7654 | MARTIN | SALESMAN  | 7698 | 2012-05-02 | 1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER   | 7839 | 2012-01-06 | 2850.00 |    NULL |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 2012-01-06 | 2450.00 |    NULL |     10 |
|  7788 | SCOTT  | ANALYST   | 7566 | 2012-01-10 | 3000.00 |    NULL |     20 |
|  7839 | KING   | PRESIDENT | NULL | 2012-01-15 | 5000.00 |    NULL |     10 |
|  7844 | TURNER | SALESMAN  | 7698 | 2012-01-20 | 1500.00 |    0.00 |     30 |
|  7876 | ADAMS  | CLERK     | 7788 | 2013-01-02 | 1100.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK     | 7698 | 2012-03-02 |  950.00 |    NULL |     30 |
|  7902 | FORD   | ANALYST   | 7566 | 2012-04-02 | 3000.00 |    NULL |     20 |
|  7934 | MILLER | CLERK     | 7782 | 2012-05-02 | 1300.00 |    NULL |     10 |
+-------+--------+-----------+------+------------+---------+---------+--------+
14 rows in set (0.00 sec)

+--------+------------+----------+
| DEPTNO | DNAME      | LOC      |
+--------+------------+----------+
|     10 | ACCOUNTING | NEW YORK |
|     20 | RESEARCH   | DALLAS   |
|     30 | SALES      | CHICAGO  |
|     40 | OPERATIONS | BOSTON   |
+--------+------------+----------+
4 rows in set (0.00 sec)

mysql> selsect comm as commission from comm;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'selsect comm as commission from comm' at line 1
mysql> selsect 'comm' as 'commission' from comm;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'selsect 'comm' as 'commission' from comm' at line 1
mysql> select 'comm' as 'commission' from comm;
ERROR 1146 (42S02): Table 'cdac.comm' doesn't exist
mysql> select 'comm' as 'commission' from emp;
+------------+
| commission |
+------------+
| comm       |
| comm       |
| comm       |
| comm       |
| comm       |
| comm       |
| comm       |
| comm       |
| comm       |
| comm       |
| comm       |
| comm       |
| comm       |
| comm       |
+------------+
14 rows in set (0.00 sec)

mysql> source D:\Nashik03-04-2023\MYSQL_D\show.sql
+-------+--------+-----------+------+------------+---------+---------+--------+
| EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL     | COMM    | DEPTNO |
+-------+--------+-----------+------+------------+---------+---------+--------+
|  7369 | SMITH  | CLERK     | 7902 | 2012-02-02 |  800.00 |    NULL |     20 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 2012-01-02 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN  | 7698 | 2013-01-02 | 1250.00 |  500.00 |     30 |
|  7566 | JONES  | MANAGER   | 7839 | 2013-01-02 | 2975.00 |    NULL |     20 |
|  7654 | MARTIN | SALESMAN  | 7698 | 2012-05-02 | 1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER   | 7839 | 2012-01-06 | 2850.00 |    NULL |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 2012-01-06 | 2450.00 |    NULL |     10 |
|  7788 | SCOTT  | ANALYST   | 7566 | 2012-01-10 | 3000.00 |    NULL |     20 |
|  7839 | KING   | PRESIDENT | NULL | 2012-01-15 | 5000.00 |    NULL |     10 |
|  7844 | TURNER | SALESMAN  | 7698 | 2012-01-20 | 1500.00 |    0.00 |     30 |
|  7876 | ADAMS  | CLERK     | 7788 | 2013-01-02 | 1100.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK     | 7698 | 2012-03-02 |  950.00 |    NULL |     30 |
|  7902 | FORD   | ANALYST   | 7566 | 2012-04-02 | 3000.00 |    NULL |     20 |
|  7934 | MILLER | CLERK     | 7782 | 2012-05-02 | 1300.00 |    NULL |     10 |
+-------+--------+-----------+------+------------+---------+---------+--------+
14 rows in set (0.00 sec)

+--------+------------+----------+
| DEPTNO | DNAME      | LOC      |
+--------+------------+----------+
|     10 | ACCOUNTING | NEW YORK |
|     20 | RESEARCH   | DALLAS   |
|     30 | SALES      | CHICAGO  |
|     40 | OPERATIONS | BOSTON   |
+--------+------------+----------+
4 rows in set (0.00 sec)

mysql> select comm as 'commission' from emp;
+------------+
| commission |
+------------+
|       NULL |
|     300.00 |
|     500.00 |
|       NULL |
|    1400.00 |
|       NULL |
|       NULL |
|       NULL |
|       NULL |
|       0.00 |
|       NULL |
|       NULL |
|       NULL |
|       NULL |
+------------+
14 rows in set (0.00 sec)

mysql> exit;
mysql> use cdac
Database changed
mysql> select *from emp;
+-------+--------+-----------+------+------------+---------+---------+--------+
| EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL     | COMM    | DEPTNO |
+-------+--------+-----------+------+------------+---------+---------+--------+
|  7369 | SMITH  | CLERK     | 7902 | 2012-02-02 |  800.00 |    NULL |     20 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 2012-01-02 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN  | 7698 | 2013-01-02 | 1250.00 |  500.00 |     30 |
|  7566 | JONES  | MANAGER   | 7839 | 2013-01-02 | 2975.00 |    NULL |     20 |
|  7654 | MARTIN | SALESMAN  | 7698 | 2012-05-02 | 1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER   | 7839 | 2012-01-06 | 2850.00 |    NULL |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 2012-01-06 | 2450.00 |    NULL |     10 |
|  7788 | SCOTT  | ANALYST   | 7566 | 2012-01-10 | 3000.00 |    NULL |     20 |
|  7839 | KING   | PRESIDENT | NULL | 2012-01-15 | 5000.00 |    NULL |     10 |
|  7844 | TURNER | SALESMAN  | 7698 | 2012-01-20 | 1500.00 |    0.00 |     30 |
|  7876 | ADAMS  | CLERK     | 7788 | 2013-01-02 | 1100.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK     | 7698 | 2012-03-02 |  950.00 |    NULL |     30 |
|  7902 | FORD   | ANALYST   | 7566 | 2012-04-02 | 3000.00 |    NULL |     20 |
|  7934 | MILLER | CLERK     | 7782 | 2012-05-02 | 1300.00 |    NULL |     10 |
+-------+--------+-----------+------+------------+---------+---------+--------+
14 rows in set (0.03 sec)

mysql> select LIMIT(2) from emp;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'LIMIT(2) from emp' at line 1
mysql> select * from emp limit(3);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(3)' at line 1
mysql> select * from emp limit 3;
+-------+-------+----------+------+------------+---------+--------+--------+
| EMPNO | ENAME | JOB      | MGR  | HIREDATE   | SAL     | COMM   | DEPTNO |
+-------+-------+----------+------+------------+---------+--------+--------+
|  7369 | SMITH | CLERK    | 7902 | 2012-02-02 |  800.00 |   NULL |     20 |
|  7499 | ALLEN | SALESMAN | 7698 | 2012-01-02 | 1600.00 | 300.00 |     30 |
|  7521 | WARD  | SALESMAN | 7698 | 2013-01-02 | 1250.00 | 500.00 |     30 |
+-------+-------+----------+------+------------+---------+--------+--------+
3 rows in set (0.00 sec)

mysql> select * from emp limit 3,2;
+-------+--------+----------+------+------------+---------+---------+--------+
| EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL     | COMM    | DEPTNO |
+-------+--------+----------+------+------------+---------+---------+--------+
|  7566 | JONES  | MANAGER  | 7839 | 2013-01-02 | 2975.00 |    NULL |     20 |
|  7654 | MARTIN | SALESMAN | 7698 | 2012-05-02 | 1250.00 | 1400.00 |     30 |
+-------+--------+----------+------+------------+---------+---------+--------+
2 rows in set (0.00 sec)

mysql> select sal  from emp desc;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'desc' at line 1
mysql> select * from emp order by sal desc;
+-------+--------+-----------+------+------------+---------+---------+--------+
| EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL     | COMM    | DEPTNO |
+-------+--------+-----------+------+------------+---------+---------+--------+
|  7839 | KING   | PRESIDENT | NULL | 2012-01-15 | 5000.00 |    NULL |     10 |
|  7788 | SCOTT  | ANALYST   | 7566 | 2012-01-10 | 3000.00 |    NULL |     20 |
|  7902 | FORD   | ANALYST   | 7566 | 2012-04-02 | 3000.00 |    NULL |     20 |
|  7566 | JONES  | MANAGER   | 7839 | 2013-01-02 | 2975.00 |    NULL |     20 |
|  7698 | BLAKE  | MANAGER   | 7839 | 2012-01-06 | 2850.00 |    NULL |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 2012-01-06 | 2450.00 |    NULL |     10 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 2012-01-02 | 1600.00 |  300.00 |     30 |
|  7844 | TURNER | SALESMAN  | 7698 | 2012-01-20 | 1500.00 |    0.00 |     30 |
|  7934 | MILLER | CLERK     | 7782 | 2012-05-02 | 1300.00 |    NULL |     10 |
|  7521 | WARD   | SALESMAN  | 7698 | 2013-01-02 | 1250.00 |  500.00 |     30 |
|  7654 | MARTIN | SALESMAN  | 7698 | 2012-05-02 | 1250.00 | 1400.00 |     30 |
|  7876 | ADAMS  | CLERK     | 7788 | 2013-01-02 | 1100.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK     | 7698 | 2012-03-02 |  950.00 |    NULL |     30 |
|  7369 | SMITH  | CLERK     | 7902 | 2012-02-02 |  800.00 |    NULL |     20 |
+-------+--------+-----------+------+------------+---------+---------+--------+
14 rows in set (0.01 sec)

mysql> select * from emp order by sal limit 3 desc;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'desc' at line 1
mysql> select * from emp order by sal desc limit 3;
+-------+-------+-----------+------+------------+---------+------+--------+
| EMPNO | ENAME | JOB       | MGR  | HIREDATE   | SAL     | COMM | DEPTNO |
+-------+-------+-----------+------+------------+---------+------+--------+
|  7839 | KING  | PRESIDENT | NULL | 2012-01-15 | 5000.00 | NULL |     10 |
|  7902 | FORD  | ANALYST   | 7566 | 2012-04-02 | 3000.00 | NULL |     20 |
|  7788 | SCOTT | ANALYST   | 7566 | 2012-01-10 | 3000.00 | NULL |     20 |
+-------+-------+-----------+------+------------+---------+------+--------+
3 rows in set (0.01 sec)

mysql> select sum(sal) from emp;
+----------+
| sum(sal) |
+----------+
| 29025.00 |
+----------+
1 row in set (0.05 sec)

mysql> select sum(sal) as total  from emp;
+----------+
| total    |
+----------+
| 29025.00 |
+----------+
1 row in set (0.01 sec)

mysql> select sum(sal) as total,min(sal) as minimum_salary,max(sal) as maxsalary,avg(sal) as averagesalary,count(*)  from emp;
+----------+----------------+-----------+---------------+----------+
| total    | minimum_salary | maxsalary | averagesalary | count(*) |
+----------+----------------+-----------+---------------+----------+
| 29025.00 |         800.00 |   5000.00 |   2073.214286 |       14 |
+----------+----------------+-----------+---------------+----------+
1 row in set (0.01 sec)

mysql> select count(comm) from sal;
ERROR 1146 (42S02): Table 'cdac.sal' doesn't exist
mysql> select count(comm) from emp;
+-------------+
| count(comm) |
+-------------+
|           4 |
+-------------+
1 row in set (0.00 sec)

mysql> select distinct job from emp;
+-----------+
| job       |
+-----------+
| CLERK     |
| SALESMAN  |
| MANAGER   |
| ANALYST   |
| PRESIDENT |
+-----------+
5 rows in set (0.01 sec)

mysql> select distinct job,deptno from emp;
+-----------+--------+
| job       | deptno |
+-----------+--------+
| CLERK     |     20 |
| SALESMAN  |     30 |
| MANAGER   |     20 |
| MANAGER   |     30 |
| MANAGER   |     10 |
| ANALYST   |     20 |
| PRESIDENT |     10 |
| CLERK     |     30 |
| CLERK     |     10 |
+-----------+--------+
9 rows in set (0.00 sec)

mysql> select * from emp  where ename='smith';
+-------+-------+-------+------+------------+--------+------+--------+
| EMPNO | ENAME | JOB   | MGR  | HIREDATE   | SAL    | COMM | DEPTNO |
+-------+-------+-------+------+------------+--------+------+--------+
|  7369 | SMITH | CLERK | 7902 | 2012-02-02 | 800.00 | NULL |     20 |
+-------+-------+-------+------+------------+--------+------+--------+
1 row in set (0.01 sec)

mysql> select * from emp  where ename='smith',ename='allen';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ',ename='allen'' at line 1
mysql> select * from emp  where ename='smith' && ename='allen';
Empty set, 1 warning (0.00 sec)

mysql> select * from emp  where ename='smith' && 'allen';
Empty set, 2 warnings (0.01 sec)

mysql> select * from emp  where ename='smith'and  'allen';
Empty set, 1 warning (0.00 sec)

mysql> select * from emp  where ename='smith' or  'allen';
+-------+-------+-------+------+------------+--------+------+--------+
| EMPNO | ENAME | JOB   | MGR  | HIREDATE   | SAL    | COMM | DEPTNO |
+-------+-------+-------+------+------------+--------+------+--------+
|  7369 | SMITH | CLERK | 7902 | 2012-02-02 | 800.00 | NULL |     20 |
+-------+-------+-------+------+------------+--------+------+--------+
1 row in set, 1 warning (0.00 sec)

mysql> select * from emp  where ename='smith' ||  'allen';
+-------+-------+-------+------+------------+--------+------+--------+
| EMPNO | ENAME | JOB   | MGR  | HIREDATE   | SAL    | COMM | DEPTNO |
+-------+-------+-------+------+------------+--------+------+--------+
|  7369 | SMITH | CLERK | 7902 | 2012-02-02 | 800.00 | NULL |     20 |
+-------+-------+-------+------+------------+--------+------+--------+
1 row in set, 2 warnings (0.00 sec)

mysql> select * from emp  where ename='smith' &&  'allen';
Empty set, 2 warnings (0.00 sec)

mysql> select * from emp  where ename='smith' ||  'allen';
+-------+-------+-------+------+------------+--------+------+--------+
| EMPNO | ENAME | JOB   | MGR  | HIREDATE   | SAL    | COMM | DEPTNO |
+-------+-------+-------+------+------------+--------+------+--------+
|  7369 | SMITH | CLERK | 7902 | 2012-02-02 | 800.00 | NULL |     20 |
+-------+-------+-------+------+------------+--------+------+--------+
1 row in set, 2 warnings (0.00 sec)

mysql> select * from emp  where sal>2000 &&  sal<40000;
+-------+-------+-----------+------+------------+---------+------+--------+
| EMPNO | ENAME | JOB       | MGR  | HIREDATE   | SAL     | COMM | DEPTNO |
+-------+-------+-----------+------+------------+---------+------+--------+
|  7566 | JONES | MANAGER   | 7839 | 2013-01-02 | 2975.00 | NULL |     20 |
|  7698 | BLAKE | MANAGER   | 7839 | 2012-01-06 | 2850.00 | NULL |     30 |
|  7782 | CLARK | MANAGER   | 7839 | 2012-01-06 | 2450.00 | NULL |     10 |
|  7788 | SCOTT | ANALYST   | 7566 | 2012-01-10 | 3000.00 | NULL |     20 |
|  7839 | KING  | PRESIDENT | NULL | 2012-01-15 | 5000.00 | NULL |     10 |
|  7902 | FORD  | ANALYST   | 7566 | 2012-04-02 | 3000.00 | NULL |     20 |
+-------+-------+-----------+------+------------+---------+------+--------+
6 rows in set, 1 warning (0.00 sec)

mysql> select * from emp  where sal>2000 &&  sal<4000;
+-------+-------+---------+------+------------+---------+------+--------+
| EMPNO | ENAME | JOB     | MGR  | HIREDATE   | SAL     | COMM | DEPTNO |
+-------+-------+---------+------+------------+---------+------+--------+
|  7566 | JONES | MANAGER | 7839 | 2013-01-02 | 2975.00 | NULL |     20 |
|  7698 | BLAKE | MANAGER | 7839 | 2012-01-06 | 2850.00 | NULL |     30 |
|  7782 | CLARK | MANAGER | 7839 | 2012-01-06 | 2450.00 | NULL |     10 |
|  7788 | SCOTT | ANALYST | 7566 | 2012-01-10 | 3000.00 | NULL |     20 |
|  7902 | FORD  | ANALYST | 7566 | 2012-04-02 | 3000.00 | NULL |     20 |
+-------+-------+---------+------+------------+---------+------+--------+
5 rows in set, 1 warning (0.00 sec)

mysql> select * from emp  where deptno!=null;
Empty set (0.00 sec)

mysql> select * from emp  where deptno!=20;
+-------+--------+-----------+------+------------+---------+---------+--------+
| EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL     | COMM    | DEPTNO |
+-------+--------+-----------+------+------------+---------+---------+--------+
|  7499 | ALLEN  | SALESMAN  | 7698 | 2012-01-02 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN  | 7698 | 2013-01-02 | 1250.00 |  500.00 |     30 |
|  7654 | MARTIN | SALESMAN  | 7698 | 2012-05-02 | 1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER   | 7839 | 2012-01-06 | 2850.00 |    NULL |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 2012-01-06 | 2450.00 |    NULL |     10 |
|  7839 | KING   | PRESIDENT | NULL | 2012-01-15 | 5000.00 |    NULL |     10 |
|  7844 | TURNER | SALESMAN  | 7698 | 2012-01-20 | 1500.00 |    0.00 |     30 |
|  7900 | JAMES  | CLERK     | 7698 | 2012-03-02 |  950.00 |    NULL |     30 |
|  7934 | MILLER | CLERK     | 7782 | 2012-05-02 | 1300.00 |    NULL |     10 |
+-------+--------+-----------+------+------------+---------+---------+--------+
9 rows in set (0.00 sec)

mysql> select * from emp  where deptno!=null;
Empty set (0.00 sec)

mysql> select * from emp  where deptno!=20;
+-------+--------+-----------+------+------------+---------+---------+--------+
| EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL     | COMM    | DEPTNO |
+-------+--------+-----------+------+------------+---------+---------+--------+
|  7499 | ALLEN  | SALESMAN  | 7698 | 2012-01-02 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN  | 7698 | 2013-01-02 | 1250.00 |  500.00 |     30 |
|  7654 | MARTIN | SALESMAN  | 7698 | 2012-05-02 | 1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER   | 7839 | 2012-01-06 | 2850.00 |    NULL |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 2012-01-06 | 2450.00 |    NULL |     10 |
|  7839 | KING   | PRESIDENT | NULL | 2012-01-15 | 5000.00 |    NULL |     10 |
|  7844 | TURNER | SALESMAN  | 7698 | 2012-01-20 | 1500.00 |    0.00 |     30 |
|  7900 | JAMES  | CLERK     | 7698 | 2012-03-02 |  950.00 |    NULL |     30 |
|  7934 | MILLER | CLERK     | 7782 | 2012-05-02 | 1300.00 |    NULL |     10 |
+-------+--------+-----------+------+------------+---------+---------+--------+
9 rows in set (0.00 sec)

mysql> select * from emp  where deptno!='null';
+-------+--------+-----------+------+------------+---------+---------+--------+
| EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL     | COMM    | DEPTNO |
+-------+--------+-----------+------+------------+---------+---------+--------+
|  7369 | SMITH  | CLERK     | 7902 | 2012-02-02 |  800.00 |    NULL |     20 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 2012-01-02 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN  | 7698 | 2013-01-02 | 1250.00 |  500.00 |     30 |
|  7566 | JONES  | MANAGER   | 7839 | 2013-01-02 | 2975.00 |    NULL |     20 |
|  7654 | MARTIN | SALESMAN  | 7698 | 2012-05-02 | 1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER   | 7839 | 2012-01-06 | 2850.00 |    NULL |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 2012-01-06 | 2450.00 |    NULL |     10 |
|  7788 | SCOTT  | ANALYST   | 7566 | 2012-01-10 | 3000.00 |    NULL |     20 |
|  7839 | KING   | PRESIDENT | NULL | 2012-01-15 | 5000.00 |    NULL |     10 |
|  7844 | TURNER | SALESMAN  | 7698 | 2012-01-20 | 1500.00 |    0.00 |     30 |
|  7876 | ADAMS  | CLERK     | 7788 | 2013-01-02 | 1100.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK     | 7698 | 2012-03-02 |  950.00 |    NULL |     30 |
|  7902 | FORD   | ANALYST   | 7566 | 2012-04-02 | 3000.00 |    NULL |     20 |
|  7934 | MILLER | CLERK     | 7782 | 2012-05-02 | 1300.00 |    NULL |     10 |
+-------+--------+-----------+------+------------+---------+---------+--------+
14 rows in set, 1 warning (0.00 sec)

mysql> select ename from emp  where deptno!='null';
+--------+
| ename  |
+--------+
| SMITH  |
| ALLEN  |
| WARD   |
| JONES  |
| MARTIN |
| BLAKE  |
| CLARK  |
| SCOTT  |
| KING   |
| TURNER |
| ADAMS  |
| JAMES  |
| FORD   |
| MILLER |
+--------+
14 rows in set, 1 warning (0.00 sec)

mysql> select ename from emp  where comm!='null';
+--------+
| ename  |
+--------+
| ALLEN  |
| WARD   |
| MARTIN |
+--------+
3 rows in set, 1 warning (0.01 sec)

mysql> exit;

