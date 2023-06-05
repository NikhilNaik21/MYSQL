mysql> use cdac;
Database changed
mysql> select cast('2023-1-1'as date);
+-------------------------+
| cast('2023-1-1'as date) |
+-------------------------+
| 2023-01-01              |
+-------------------------+
1 row in set (0.01 sec)

mysql> convert (150,char);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'convert (150,char)' at line 1
mysql> select convert (150,char);
+--------------------+
| convert (150,char) |
+--------------------+
| 150                |
+--------------------+
1 row in set (0.01 sec)

mysql> select convert (2023-12-05,time);
+---------------------------+
| convert (2023-12-05,time) |
+---------------------------+
| 00:20:06                  |
+---------------------------+
1 row in set (0.00 sec)

mysql> select cast('2023-12-05' as date);
+----------------------------+
| cast('2023-12-05' as date) |
+----------------------------+
| 2023-12-05                 |
+----------------------------+
1 row in set (0.00 sec)

mysql> select convert(150,char);
+-------------------+
| convert(150,char) |
+-------------------+
| 150               |
+-------------------+
1 row in set (0.00 sec)

mysql> create view v1
    -> as 
    -> select * from emp;
Query OK, 0 rows affected (0.05 sec)

mysql> select* from v1;
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
14 rows in set (0.01 sec)

mysql> create view v2 
    -> as
    -> select empno,
    -> empname,
    -> hiredate,
    -> job
    -> from emp;

mysql> create view v2 
    -> as
    -> select empno,
    -> ename,hiredate from emp;
Query OK, 0 rows affected (0.01 sec)

mysql> select * from v2;
+-------+--------+------------+
| empno | ename  | hiredate   |
+-------+--------+------------+
|  7369 | SMITH  | 2012-02-02 |
|  7499 | ALLEN  | 2012-01-02 |
|  7521 | WARD   | 2013-01-02 |
|  7566 | JONES  | 2013-01-02 |
|  7654 | MARTIN | 2012-05-02 |
|  7698 | BLAKE  | 2012-01-06 |
|  7782 | CLARK  | 2012-01-06 |
|  7788 | SCOTT  | 2012-01-10 |
|  7839 | KING   | 2012-01-15 |
|  7844 | TURNER | 2012-01-20 |
|  7876 | ADAMS  | 2013-01-02 |
|  7900 | JAMES  | 2012-03-02 |
|  7902 | FORD   | 2012-04-02 |
|  7934 | MILLER | 2012-05-02 |
+-------+--------+------------+
14 rows in set (0.00 sec)

mysql> create view v3 as select empno,mgr,sal from emp where deptno=10 or deptno=20 and sal>1000;
Query OK, 0 rows affected (0.01 sec)

mysql> select * from v3
    -> ;
+-------+------+---------+
| empno | mgr  | sal     |
+-------+------+---------+
|  7566 | 7839 | 2975.00 |
|  7782 | 7839 | 2450.00 |
|  7788 | 7566 | 3000.00 |
|  7839 | NULL | 5000.00 |
|  7876 | 7788 | 1100.00 |
|  7902 | 7566 | 3000.00 |
|  7934 | 7782 | 1300.00 |
+-------+------+---------+
7 rows in set (0.01 sec)


mysql> create view v4 as select sal from emp where sal>2000;
Query OK, 0 rows affected (0.01 sec)

mysql> select * from v4;
+---------+
| sal     |
+---------+
| 2975.00 |
| 2850.00 |
| 2450.00 |
| 3000.00 |
| 5000.00 |
| 3000.00 |
+---------+
6 rows in set (0.00 sec)

mysql> show tables;
+----------------+
| Tables_in_cdac |
+----------------+
| cardinfo       |
| cardtype       |
| customer       |
| customer1      |
| dept           |
| emp            |
| employee       |
| locale         |
| v1             |
| v2             |
| v3             |
| v4             |
+----------------+
12 rows in set (0.03 sec)

mysql> desc v1;
+----------+--------------+------+-----+---------+-------+
| Field    | Type         | Null | Key | Default | Extra |
+----------+--------------+------+-----+---------+-------+
| EMPNO    | decimal(4,0) | NO   |     | NULL    |       |
| ENAME    | varchar(10)  | YES  |     | NULL    |       |
| JOB      | varchar(9)   | YES  |     | NULL    |       |
| MGR      | decimal(4,0) | YES  |     | NULL    |       |
| HIREDATE | date         | YES  |     | NULL    |       |
| SAL      | decimal(7,2) | YES  |     | NULL    |       |
| COMM     | decimal(7,2) | YES  |     | NULL    |       |
| DEPTNO   | decimal(2,0) | YES  |     | NULL    |       |
+----------+--------------+------+-----+---------+-------+
8 rows in set (0.01 sec)

mysql> desc v3;
+-------+--------------+------+-----+---------+-------+
| Field | Type         | Null | Key | Default | Extra |
+-------+--------------+------+-----+---------+-------+
| empno | decimal(4,0) | NO   |     | NULL    |       |
| mgr   | decimal(4,0) | YES  |     | NULL    |       |
| sal   | decimal(7,2) | YES  |     | NULL    |       |
+-------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> drop view v3;
Query OK, 0 rows affected (0.01 sec)

mysql> desc v3;
ERROR 1146 (42S02): Table 'cdac.v3' doesn't exist
mysql> show tables;
+----------------+
| Tables_in_cdac |
+----------------+
| cardinfo       |
| cardtype       |
| customer       |
| customer1      |
| dept           |
| emp            |
| employee       |
| locale         |
| v1             |
| v2             |
| v4             |
+----------------+
11 rows in set (0.00 sec)

mysql> select * from v4;
+---------+
| sal     |
+---------+
| 2975.00 |
| 2850.00 |
| 2450.00 |
| 3000.00 |
| 5000.00 |
| 3000.00 |
+---------+
6 rows in set (0.00 sec)

mysql> select * from v2;
+-------+--------+------------+
| empno | ename  | hiredate   |
+-------+--------+------------+
|  7369 | SMITH  | 2012-02-02 |
|  7499 | ALLEN  | 2012-01-02 |
|  7521 | WARD   | 2013-01-02 |
|  7566 | JONES  | 2013-01-02 |
|  7654 | MARTIN | 2012-05-02 |
|  7698 | BLAKE  | 2012-01-06 |
|  7782 | CLARK  | 2012-01-06 |
|  7788 | SCOTT  | 2012-01-10 |
|  7839 | KING   | 2012-01-15 |
|  7844 | TURNER | 2012-01-20 |
|  7876 | ADAMS  | 2013-01-02 |
|  7900 | JAMES  | 2012-03-02 |
|  7902 | FORD   | 2012-04-02 |
|  7934 | MILLER | 2012-05-02 |
+-------+--------+------------+
14 rows in set (0.00 sec)


mysql> insert into v2 (empno,ename,hiredate) values (7935,'Rohan','2023-01-12');
Query OK, 1 row affected (0.01 sec)

mysql> select * from v2;
+-------+--------+------------+
| empno | ename  | hiredate   |
+-------+--------+------------+
|  7369 | SMITH  | 2012-02-02 |
|  7499 | ALLEN  | 2012-01-02 |
|  7521 | WARD   | 2013-01-02 |
|  7566 | JONES  | 2013-01-02 |
|  7654 | MARTIN | 2012-05-02 |
|  7698 | BLAKE  | 2012-01-06 |
|  7782 | CLARK  | 2012-01-06 |
|  7788 | SCOTT  | 2012-01-10 |
|  7839 | KING   | 2012-01-15 |
|  7844 | TURNER | 2012-01-20 |
|  7876 | ADAMS  | 2013-01-02 |
|  7900 | JAMES  | 2012-03-02 |
|  7902 | FORD   | 2012-04-02 |
|  7934 | MILLER | 2012-05-02 |
|  7935 | Rohan  | 2023-01-12 |
+-------+--------+------------+
15 rows in set (0.00 sec)

mysql> insert into v2 (empno,ename,hiredate) values (7936,'Mohan','2023-01-12');
Query OK, 1 row affected (0.01 sec)

mysql> select * from v2;
+-------+--------+------------+
| empno | ename  | hiredate   |
+-------+--------+------------+
|  7369 | SMITH  | 2012-02-02 |
|  7499 | ALLEN  | 2012-01-02 |
|  7521 | WARD   | 2013-01-02 |
|  7566 | JONES  | 2013-01-02 |
|  7654 | MARTIN | 2012-05-02 |
|  7698 | BLAKE  | 2012-01-06 |
|  7782 | CLARK  | 2012-01-06 |
|  7788 | SCOTT  | 2012-01-10 |
|  7839 | KING   | 2012-01-15 |
|  7844 | TURNER | 2012-01-20 |
|  7876 | ADAMS  | 2013-01-02 |
|  7900 | JAMES  | 2012-03-02 |
|  7902 | FORD   | 2012-04-02 |
|  7934 | MILLER | 2012-05-02 |
|  7935 | Rohan  | 2023-01-12 |
|  7936 | Mohan  | 2023-01-12 |
+-------+--------+------------+
16 rows in set (0.00 sec)

mysql> delete from v2 where ename='Mohan';
Query OK, 1 row affected (0.05 sec)

mysql> select * from v2;
+-------+--------+------------+
| empno | ename  | hiredate   |
+-------+--------+------------+
|  7369 | SMITH  | 2012-02-02 |
|  7499 | ALLEN  | 2012-01-02 |
|  7521 | WARD   | 2013-01-02 |
|  7566 | JONES  | 2013-01-02 |
|  7654 | MARTIN | 2012-05-02 |
|  7698 | BLAKE  | 2012-01-06 |
|  7782 | CLARK  | 2012-01-06 |
|  7788 | SCOTT  | 2012-01-10 |
|  7839 | KING   | 2012-01-15 |
|  7844 | TURNER | 2012-01-20 |
|  7876 | ADAMS  | 2013-01-02 |
|  7900 | JAMES  | 2012-03-02 |
|  7902 | FORD   | 2012-04-02 |
|  7934 | MILLER | 2012-05-02 |
|  7935 | Rohan  | 2023-01-12 |
+-------+--------+------------+
15 rows in set (0.00 sec)

mysql> alter view v2
    -> as 
    -> select comm from emp;
Query OK, 0 rows affected (0.01 sec)

mysql> select * from v;
ERROR 1146 (42S02): Table 'cdac.v' doesn't exist
mysql> select * from v2;
+---------+
| comm    |
+---------+
|    NULL |
|  300.00 |
|  500.00 |
|    NULL |
| 1400.00 |
|    NULL |
|    NULL |
|    NULL |
|    NULL |
|    0.00 |
|    NULL |
|    NULL |
|    NULL |
|    NULL |
|    NULL |
+---------+
15 rows in set (0.00 sec)

mysql> alter view v2 as
    -> select empno,ename,hiredate,comm from emp;
Query OK, 0 rows affected (0.00 sec)

mysql> select * from v2;
+-------+--------+------------+---------+
| empno | ename  | hiredate   | comm    |
+-------+--------+------------+---------+
|  7369 | SMITH  | 2012-02-02 |    NULL |
|  7499 | ALLEN  | 2012-01-02 |  300.00 |
|  7521 | WARD   | 2013-01-02 |  500.00 |
|  7566 | JONES  | 2013-01-02 |    NULL |
|  7654 | MARTIN | 2012-05-02 | 1400.00 |
|  7698 | BLAKE  | 2012-01-06 |    NULL |
|  7782 | CLARK  | 2012-01-06 |    NULL |
|  7788 | SCOTT  | 2012-01-10 |    NULL |
|  7839 | KING   | 2012-01-15 |    NULL |
|  7844 | TURNER | 2012-01-20 |    0.00 |
|  7876 | ADAMS  | 2013-01-02 |    NULL |
|  7900 | JAMES  | 2012-03-02 |    NULL |
|  7902 | FORD   | 2012-04-02 |    NULL |
|  7934 | MILLER | 2012-05-02 |    NULL |
|  7935 | Rohan  | 2023-01-12 |    NULL |
+-------+--------+------------+---------+
15 rows in set (0.00 sec)

mysql> show tables;
+----------------+
| Tables_in_cdac |
+----------------+
| cardinfo       |
| cardtype       |
| customer       |
| customer1      |
| dept           |
| emp            |
| employee       |
| locale         |
| v1             |
| v2             |
| v4             |
+----------------+
11 rows in set (0.00 sec)

mysql> -- with check option

mysql> select empno,ename,deptno
    -> as
    -> select empno,ename,deptno
    -> from emp
    -> where deptno=10
    -> with check option;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'select empno,ename,deptno
from emp
where deptno=10
with check option' at line 3
mysql> select empno,ename,deptno
    -> from emp where deptno=10 
    -> with check option;
Query OK, 0 rows affected (0.01 sec)

mysql> select * from v3;
+-------+--------+--------+
| empno | ename  | deptno |
+-------+--------+--------+
|  7369 | SMITH  |     20 |
|  7499 | ALLEN  |     30 |
|  7521 | WARD   |     30 |
|  7566 | JONES  |     20 |
|  7654 | MARTIN |     30 |
|  7698 | BLAKE  |     30 |
|  7782 | CLARK  |     10 |
|  7788 | SCOTT  |     20 |
|  7839 | KING   |     10 |
|  7844 | TURNER |     30 |
|  7876 | ADAMS  |     20 |
|  7900 | JAMES  |     30 |
|  7902 | FORD   |     20 |
|  7934 | MILLER |     10 |
|  7935 | Rohan  |   NULL |
+-------+--------+--------+
15 rows in set (0.00 sec)

mysql> insert into v3 values(1111,'Sachinnnnnn',50);
ERROR 1406 (22001): Data too long for column 'ENAME' at row 1
mysql> insert into v3 values(1111,'Sachin',50);
Query OK, 1 row affected (0.01 sec)

mysql> select * from v3;
+-------+--------+--------+
| empno | ename  | deptno |
+-------+--------+--------+
|  1111 | Sachin |     50 |
|  7369 | SMITH  |     20 |
|  7499 | ALLEN  |     30 |
|  7521 | WARD   |     30 |
|  7566 | JONES  |     20 |
|  7654 | MARTIN |     30 |
|  7698 | BLAKE  |     30 |
|  7782 | CLARK  |     10 |
|  7788 | SCOTT  |     20 |
|  7839 | KING   |     10 |
|  7844 | TURNER |     30 |
|  7876 | ADAMS  |     20 |
|  7900 | JAMES  |     30 |
|  7902 | FORD   |     20 |
|  7934 | MILLER |     10 |
|  7935 | Rohan  |   NULL |
+-------+--------+--------+
16 rows in set (0.00 sec)

mysql> delete from v3 where empno=1111;
Query OK, 1 row affected (0.01 sec)

mysql> delete from v3 where deptno=50;
Query OK, 0 rows affected (0.00 sec)

mysql> select * from v3;
+-------+--------+--------+
| empno | ename  | deptno |
+-------+--------+--------+
|  7369 | SMITH  |     20 |
|  7499 | ALLEN  |     30 |
|  7521 | WARD   |     30 |
|  7566 | JONES  |     20 |
|  7654 | MARTIN |     30 |
|  7698 | BLAKE  |     30 |
|  7782 | CLARK  |     10 |
|  7788 | SCOTT  |     20 |
|  7839 | KING   |     10 |
|  7844 | TURNER |     30 |
|  7876 | ADAMS  |     20 |
|  7900 | JAMES  |     30 |
|  7902 | FORD   |     20 |
|  7934 | MILLER |     10 |
|  7935 | Rohan  |   NULL |
+-------+--------+--------+
15 rows in set (0.00 sec)

mysql> drop view v3;
Query OK, 0 rows affected (0.01 sec)

mysql> create view v3 as select empno,ename,deptno from emp where deptno=50 with check option;
Query OK, 0 rows affected (0.02 sec)

mysql> insert into v3 values(1111,'Sachin',50);
Query OK, 1 row affected (0.01 sec)

mysql> select * from v3;
+-------+--------+--------+
| empno | ename  | deptno |
+-------+--------+--------+
|  1111 | Sachin |     50 |
+-------+--------+--------+
1 row in set (0.00 sec)

mysql> delete from v3 where deptno=50;
Query OK, 1 row affected (0.01 sec)

mysql> delete from v3 where deptno=10;
Query OK, 0 rows affected (0.00 sec)

mysql> select * from v3;
Empty set (0.00 sec)

mysql> select * from v3;
Empty set (0.00 sec)

mysql> desc v3;
+--------+--------------+------+-----+---------+-------+
| Field  | Type         | Null | Key | Default | Extra |
+--------+--------------+------+-----+---------+-------+
| empno  | decimal(4,0) | NO   |     | NULL    |       |
| ename  | varchar(10)  | YES  |     | NULL    |       |
| deptno | decimal(2,0) | YES  |     | NULL    |       |
+--------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> select * from v3;
Empty set (0.00 sec)
mysql> drop view v3;
Query OK, 0 rows affected (0.01 sec)
mysql> create view v3 as select empno,ename,deptno from emp where deptno=10 with check option;
Query OK, 0 rows affected (0.05 sec)

mysql> show tables;
+----------------+
| Tables_in_cdac |
+----------------+
| cardinfo       |
| cardtype       |
| customer       |
| customer1      |
| dept           |
| emp            |
| employee       |
| locale         |
| v1             |
| v2             |
| v3             |
| v4             |
+----------------+
12 rows in set (0.00 sec)

mysql> drop view v3;
Query OK, 0 rows affected (0.01 sec)

mysql> show tables;
+----------------+
| Tables_in_cdac |
+----------------+
| cardinfo       |
| cardtype       |
| customer       |
| customer1      |
| dept           |
| emp            |
| employee       |
| locale         |
| v1             |
| v2             |
| v4             |
+----------------+
11 rows in set (0.00 sec)

mysql> create view v3 as select empno,ename,deptno from emp where deptno=10 with check option;
Query OK, 0 rows affected (0.05 sec)

mysql> show tables;
+----------------+
| Tables_in_cdac |
+----------------+
| cardinfo       |
| cardtype       |
| customer       |
| customer1      |
| dept           |
| emp            |
| employee       |
| locale         |
| v1             |
| v2             |
| v3             |
| v4             |
+----------------+
12 rows in set (0.00 sec)

mysql> insert into v3 values(1000,'Sacnn',50);
ERROR 1369 (HY000): CHECK OPTION failed 'cdac.v3'
mysql> insert into v3 values(1000,'Sacnn',10);
Query OK, 1 row affected (0.01 sec)

mysql> select * from v3;
+-------+--------+--------+
| empno | ename  | deptno |
+-------+--------+--------+
|  1000 | Sacnn  |     10 |
|  7782 | CLARK  |     10 |
|  7839 | KING   |     10 |
|  7934 | MILLER |     10 |
+-------+--------+--------+
4 rows in set (0.00 sec)

mysql> delete from v3 where empno=1000;
Query OK, 1 row affected (0.01 sec)

mysql> select * from v3;
+-------+--------+--------+
| empno | ename  | deptno |
+-------+--------+--------+
|  7782 | CLARK  |     10 |
|  7839 | KING   |     10 |
|  7934 | MILLER |     10 |
+-------+--------+--------+
3 rows in set (0.00 sec)

mysql> delete from v3 where deptno=20;
Query OK, 0 rows affected (0.00 sec)

mysql> delete from v3 where deptno=10;
Query OK, 3 rows affected (0.01 sec)

mysql> select * from v3;
Empty set (0.00 sec)

mysql> 
mysql> create index ename_id on emp(ename);
Query OK, 0 rows affected (0.07 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from emp;
+-------+--------+----------+------+------------+---------+---------+--------+
| EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL     | COMM    | DEPTNO |
+-------+--------+----------+------+------------+---------+---------+--------+
|  7369 | SMITH  | CLERK    | 7902 | 2012-02-02 |  800.00 |    NULL |     20 |
|  7499 | ALLEN  | SALESMAN | 7698 | 2012-01-02 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN | 7698 | 2013-01-02 | 1250.00 |  500.00 |     30 |
|  7566 | JONES  | MANAGER  | 7839 | 2013-01-02 | 2975.00 |    NULL |     20 |
|  7654 | MARTIN | SALESMAN | 7698 | 2012-05-02 | 1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER  | 7839 | 2012-01-06 | 2850.00 |    NULL |     30 |
|  7788 | SCOTT  | ANALYST  | 7566 | 2012-01-10 | 3000.00 |    NULL |     20 |
|  7844 | TURNER | SALESMAN | 7698 | 2012-01-20 | 1500.00 |    0.00 |     30 |
|  7876 | ADAMS  | CLERK    | 7788 | 2013-01-02 | 1100.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK    | 7698 | 2012-03-02 |  950.00 |    NULL |     30 |
|  7902 | FORD   | ANALYST  | 7566 | 2012-04-02 | 3000.00 |    NULL |     20 |
|  7935 | Rohan  | NULL     | NULL | 2023-01-12 |    NULL |    NULL |   NULL |
+-------+--------+----------+------+------------+---------+---------+--------+
12 rows in set (0.00 sec)

mysql> select * from emp where ename='Smith';
+-------+-------+-------+------+------------+--------+------+--------+
| EMPNO | ENAME | JOB   | MGR  | HIREDATE   | SAL    | COMM | DEPTNO |
+-------+-------+-------+------+------------+--------+------+--------+
|  7369 | SMITH | CLERK | 7902 | 2012-02-02 | 800.00 | NULL |     20 |
+-------+-------+-------+------+------------+--------+------+--------+
1 row in set (0.00 sec)

mysql>  create index salay_id on emp(sal) desc;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'desc' at line 1
mysql>  create index salay_id on emp(sal desc) ;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> create unique index ename_id on emp(ename);
ERROR 1061 (42000): Duplicate key name 'ename_id'
mysql> create unique index ename_id2 on emp(ename);
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> create index comm_id on emp(comm);
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> -- composite index 
mysql> create index sal_comm_id on emp(sal,comm);
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from emp where sal>3000 and comm<2000;
Empty set (0.00 sec)

mysql> select * from emp;
+-------+--------+----------+------+------------+---------+---------+--------+
| EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL     | COMM    | DEPTNO |
+-------+--------+----------+------+------------+---------+---------+--------+
|  7369 | SMITH  | CLERK    | 7902 | 2012-02-02 |  800.00 |    NULL |     20 |
|  7499 | ALLEN  | SALESMAN | 7698 | 2012-01-02 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN | 7698 | 2013-01-02 | 1250.00 |  500.00 |     30 |
|  7566 | JONES  | MANAGER  | 7839 | 2013-01-02 | 2975.00 |    NULL |     20 |
|  7654 | MARTIN | SALESMAN | 7698 | 2012-05-02 | 1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER  | 7839 | 2012-01-06 | 2850.00 |    NULL |     30 |
|  7788 | SCOTT  | ANALYST  | 7566 | 2012-01-10 | 3000.00 |    NULL |     20 |
|  7844 | TURNER | SALESMAN | 7698 | 2012-01-20 | 1500.00 |    0.00 |     30 |
|  7876 | ADAMS  | CLERK    | 7788 | 2013-01-02 | 1100.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK    | 7698 | 2012-03-02 |  950.00 |    NULL |     30 |
|  7902 | FORD   | ANALYST  | 7566 | 2012-04-02 | 3000.00 |    NULL |     20 |
|  7935 | Rohan  | NULL     | NULL | 2023-01-12 |    NULL |    NULL |   NULL |
+-------+--------+----------+------+------------+---------+---------+--------+
12 rows in set (0.00 sec)

mysql> select * from emp where sal>3000 and comm<1400;
Empty set (0.00 sec)

mysql> select * from emp where sal>2000 and comm<1400;
Empty set (0.00 sec)

mysql> select * from emp where sal>500 and comm<1400;
+-------+--------+----------+------+------------+---------+--------+--------+
| EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL     | COMM   | DEPTNO |
+-------+--------+----------+------+------------+---------+--------+--------+
|  7844 | TURNER | SALESMAN | 7698 | 2012-01-20 | 1500.00 |   0.00 |     30 |
|  7499 | ALLEN  | SALESMAN | 7698 | 2012-01-02 | 1600.00 | 300.00 |     30 |
|  7521 | WARD   | SALESMAN | 7698 | 2013-01-02 | 1250.00 | 500.00 |     30 |
+-------+--------+----------+------+------------+---------+--------+--------+
3 rows in set (0.00 sec)

mysql> desc emp;
+----------+--------------+------+-----+---------+-------+
| Field    | Type         | Null | Key | Default | Extra |
+----------+--------------+------+-----+---------+-------+
| EMPNO    | decimal(4,0) | NO   | PRI | NULL    |       |
| ENAME    | varchar(10)  | YES  | UNI | NULL    |       |
| JOB      | varchar(9)   | YES  |     | NULL    |       |
| MGR      | decimal(4,0) | YES  |     | NULL    |       |
| HIREDATE | date         | YES  |     | NULL    |       |
| SAL      | decimal(7,2) | YES  | MUL | NULL    |       |
| COMM     | decimal(7,2) | YES  | MUL | NULL    |       |
| DEPTNO   | decimal(2,0) | YES  |     | NULL    |       |
+----------+--------------+------+-----+---------+-------+
8 rows in set (0.00 sec)

mysql> drop index sal_comm_id from emp;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'from emp' at line 1
mysql> drop index sal_comm_id on emp;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

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


mysql> select ename, case(deptno) when 10 then 'accounting' when 20 then 'research' when 30 then 'sales' else 'Others' end as dname from emp;
+--------+----------+
| ename  | dname    |
+--------+----------+
| SMITH  | research |
| ALLEN  | sales    |
| WARD   | sales    |
| JONES  | research |
| MARTIN | sales    |
| BLAKE  | sales    |
| SCOTT  | research |
| TURNER | sales    |
| ADAMS  | research |
| JAMES  | sales    |
| FORD   | research |
| Rohan  | Others   |
+--------+----------+
12 rows in set (0.00 sec)

mysql> select concat(job,left(job,1))from emp;
+-------------------------+
| concat(job,left(job,1)) |
+-------------------------+
| CLERKC                  |
| SALESMANS               |
| SALESMANS               |
| MANAGERM                |
| SALESMANS               |
| MANAGERM                |
| ANALYSTA                |
| SALESMANS               |
| CLERKC                  |
| CLERKC                  |
| ANALYSTA                |
| NULL                    |
+-------------------------+
12 rows in set (0.01 sec)

mysql> select concat(job,' ',left(job,1))from emp;
+-----------------------------+
| concat(job,' ',left(job,1)) |
+-----------------------------+
| CLERK C                     |
| SALESMAN S                  |
| SALESMAN S                  |
| MANAGER M                   |
| SALESMAN S                  |
| MANAGER M                   |
| ANALYST A                   |
| SALESMAN S                  |
| CLERK C                     |
| CLERK C                     |
| ANALYST A                   |
| NULL                        |
+-----------------------------+
12 rows in set (0.00 sec)

mysql> select concat(job,'( ',left(job,1) ')' )from emp;
ERROR 1583 (42000): Incorrect parameters in the call to native function 'concat'
mysql> select concat(job,'( ',left(job,1), ')' )from emp;
+------------------------------------+
| concat(job,'( ',left(job,1), ')' ) |
+------------------------------------+
| CLERK( C)                          |
| SALESMAN( S)                       |
| SALESMAN( S)                       |
| MANAGER( M)                        |
| SALESMAN( S)                       |
| MANAGER( M)                        |
| ANALYST( A)                        |
| SALESMAN( S)                       |
| CLERK( C)                          |
| CLERK( C)                          |
| ANALYST( A)                        |
| NULL                               |
+------------------------------------+
12 rows in set (0.00 sec)

mysql> select concat(job,'(',left(job,1), ')' )from emp;
+-----------------------------------+
| concat(job,'(',left(job,1), ')' ) |
+-----------------------------------+
| CLERK(C)                          |
| SALESMAN(S)                       |
| SALESMAN(S)                       |
| MANAGER(M)                        |
| SALESMAN(S)                       |
| MANAGER(M)                        |
| ANALYST(A)                        |
| SALESMAN(S)                       |
| CLERK(C)                          |
| CLERK(C)                          |
| ANALYST(A)                        |
| NULL                              |
+-----------------------------------+
12 rows in set (0.00 sec)

mysql> select concat(job,' (',left(job,1), ')' )from emp;
+------------------------------------+
| concat(job,' (',left(job,1), ')' ) |
+------------------------------------+
| CLERK (C)                          |
| SALESMAN (S)                       |
| SALESMAN (S)                       |
| MANAGER (M)                        |
| SALESMAN (S)                       |
| MANAGER (M)                        |
| ANALYST (A)                        |
| SALESMAN (S)                       |
| CLERK (C)                          |
| CLERK (C)                          |
| ANALYST (A)                        |
| NULL                               |
+------------------------------------+
12 rows in set (0.00 sec)

mysql> select job, case(job)
    -> when 'clerk' then C
    -> when 'Salesman' then S
    -> when 'Manager' then M
    -> ^C
mysql> when 'Manager' then 'M'
    -> when 'Salesman' then 'S'
    -> when 'clerk' then 'C'
    -> when president then 'P'
    -> when Analyst then 'A'
    -> else 'others'
    -> end)  as djob
    -> from emp;

mysql> select job , case(job) when 'clerk' then 'C' when 'salesman' then 'S' when 'President' then 'P' else 'Others' end as  djob from emp;
+----------+--------+
| job      | djob   |
+----------+--------+
| CLERK    | C      |
| SALESMAN | S      |
| SALESMAN | S      |
| MANAGER  | Others |
| SALESMAN | S      |
| MANAGER  | Others |
| ANALYST  | Others |
| SALESMAN | S      |
| CLERK    | C      |
| CLERK    | C      |
| ANALYST  | Others |
| NULL     | Others |
+----------+--------+
12 rows in set (0.00 sec)

mysql> select * from emp; 
+-------+--------+----------+------+------------+---------+---------+--------+
| EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL     | COMM    | DEPTNO |
+-------+--------+----------+------+------------+---------+---------+--------+
|  7369 | SMITH  | CLERK    | 7902 | 2012-02-02 |  800.00 |    NULL |     20 |
|  7499 | ALLEN  | SALESMAN | 7698 | 2012-01-02 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN | 7698 | 2013-01-02 | 1250.00 |  500.00 |     30 |
|  7566 | JONES  | MANAGER  | 7839 | 2013-01-02 | 2975.00 |    NULL |     20 |
|  7654 | MARTIN | SALESMAN | 7698 | 2012-05-02 | 1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER  | 7839 | 2012-01-06 | 2850.00 |    NULL |     30 |
|  7788 | SCOTT  | ANALYST  | 7566 | 2012-01-10 | 3000.00 |    NULL |     20 |
|  7844 | TURNER | SALESMAN | 7698 | 2012-01-20 | 1500.00 |    0.00 |     30 |
|  7876 | ADAMS  | CLERK    | 7788 | 2013-01-02 | 1100.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK    | 7698 | 2012-03-02 |  950.00 |    NULL |     30 |
|  7902 | FORD   | ANALYST  | 7566 | 2012-04-02 | 3000.00 |    NULL |     20 |
|  7935 | Rohan  | NULL     | NULL | 2023-01-12 |    NULL |    NULL |   NULL |
+-------+--------+----------+------+------------+---------+---------+--------+
12 rows in set (0.00 sec)

mysql> select length(ename) from emp; 
+---------------+
| length(ename) |
+---------------+
|             5 |
|             5 |
|             5 |
|             4 |
|             5 |
|             5 |
|             6 |
|             5 |
|             5 |
|             5 |
|             6 |
|             4 |
+---------------+
12 rows in set (0.00 sec)


mysql> create table new_emp
    -> select * from emp;
Query OK, 12 rows affected (0.03 sec)
Records: 12  Duplicates: 0  Warnings: 0

mysql> select * from new_emp;
+-------+--------+----------+------+------------+---------+---------+--------+
| EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL     | COMM    | DEPTNO |
+-------+--------+----------+------+------------+---------+---------+--------+
|  7369 | SMITH  | CLERK    | 7902 | 2012-02-02 |  800.00 |    NULL |     20 |
|  7499 | ALLEN  | SALESMAN | 7698 | 2012-01-02 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN | 7698 | 2013-01-02 | 1250.00 |  500.00 |     30 |
|  7566 | JONES  | MANAGER  | 7839 | 2013-01-02 | 2975.00 |    NULL |     20 |
|  7654 | MARTIN | SALESMAN | 7698 | 2012-05-02 | 1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER  | 7839 | 2012-01-06 | 2850.00 |    NULL |     30 |
|  7788 | SCOTT  | ANALYST  | 7566 | 2012-01-10 | 3000.00 |    NULL |     20 |
|  7844 | TURNER | SALESMAN | 7698 | 2012-01-20 | 1500.00 |    0.00 |     30 |
|  7876 | ADAMS  | CLERK    | 7788 | 2013-01-02 | 1100.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK    | 7698 | 2012-03-02 |  950.00 |    NULL |     30 |
|  7902 | FORD   | ANALYST  | 7566 | 2012-04-02 | 3000.00 |    NULL |     20 |
|  7935 | Rohan  | NULL     | NULL | 2023-01-12 |    NULL |    NULL |   NULL |
+-------+--------+----------+------+------------+---------+---------+--------+
12 rows in set (0.00 sec)

mysql> select count(ename) from emp;
+--------------+
| count(ename) |
+--------------+
|           12 |
+--------------+
1 row in set (0.00 sec)

mysql> desc emp;
+----------+--------------+------+-----+---------+-------+
| Field    | Type         | Null | Key | Default | Extra |
+----------+--------------+------+-----+---------+-------+
| EMPNO    | decimal(4,0) | NO   | PRI | NULL    |       |
| ENAME    | varchar(10)  | YES  | UNI | NULL    |       |
| JOB      | varchar(9)   | YES  |     | NULL    |       |
| MGR      | decimal(4,0) | YES  |     | NULL    |       |
| HIREDATE | date         | YES  |     | NULL    |       |
| SAL      | decimal(7,2) | YES  | MUL | NULL    |       |
| COMM     | decimal(7,2) | YES  | MUL | NULL    |       |
| DEPTNO   | decimal(2,0) | YES  |     | NULL    |       |
+----------+--------------+------+-----+---------+-------+
8 rows in set (0.00 sec)

mysql> desc new_emp;
+----------+--------------+------+-----+---------+-------+
| Field    | Type         | Null | Key | Default | Extra |
+----------+--------------+------+-----+---------+-------+
| EMPNO    | decimal(4,0) | NO   |     | NULL    |       |
| ENAME    | varchar(10)  | YES  |     | NULL    |       |
| JOB      | varchar(9)   | YES  |     | NULL    |       |
| MGR      | decimal(4,0) | YES  |     | NULL    |       |
| HIREDATE | date         | YES  |     | NULL    |       |
| SAL      | decimal(7,2) | YES  |     | NULL    |       |
| COMM     | decimal(7,2) | YES  |     | NULL    |       |
| DEPTNO   | decimal(2,0) | YES  |     | NULL    |       |
+----------+--------------+------+-----+---------+-------+
8 rows in set (0.00 sec)

mysql> create table new_emp1 
    -> select empno,sal,comm from emp;
Query OK, 12 rows affected (0.07 sec)
Records: 12  Duplicates: 0  Warnings: 0

mysql> select *from new_emp1;
+-------+---------+---------+
| empno | sal     | comm    |
+-------+---------+---------+
|  7369 |  800.00 |    NULL |
|  7499 | 1600.00 |  300.00 |
|  7521 | 1250.00 |  500.00 |
|  7566 | 2975.00 |    NULL |
|  7654 | 1250.00 | 1400.00 |
|  7698 | 2850.00 |    NULL |
|  7788 | 3000.00 |    NULL |
|  7844 | 1500.00 |    0.00 |
|  7876 | 1100.00 |    NULL |
|  7900 |  950.00 |    NULL |
|  7902 | 3000.00 |    NULL |
|  7935 |    NULL |    NULL |
+-------+---------+---------+
12 rows in set (0.00 sec)

mysql> -- Second way to copy the records
mysql> create table new emp_4(
    -> empno int,
    -> ename varchar(20),
    -> comm varchar(20));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'emp_4(
empno int,
ename varchar(20),
comm varchar(20))' at line 1
mysql> create table new_emp_4(
    -> empno int,
    -> ename varchar(20),
    -> comm varchar(20));
Query OK, 0 rows affected (0.02 sec)

mysql> insert into new_emp_4 select empno,ename,comm from emp where deptno=10;
Query OK, 0 rows affected (0.00 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from new_emp_4;
Empty set (0.00 sec)

mysql> insert into new_emp_4 select empno,ename,comm from emp ;
Query OK, 12 rows affected (0.05 sec)
Records: 12  Duplicates: 0  Warnings: 0

mysql> select * from new_emp_4;
+-------+--------+---------+
| empno | ename  | comm    |
+-------+--------+---------+
|  7369 | SMITH  | NULL    |
|  7499 | ALLEN  | 300.00  |
|  7521 | WARD   | 500.00  |
|  7566 | JONES  | NULL    |
|  7654 | MARTIN | 1400.00 |
|  7698 | BLAKE  | NULL    |
|  7788 | SCOTT  | NULL    |
|  7844 | TURNER | 0.00    |
|  7876 | ADAMS  | NULL    |
|  7900 | JAMES  | NULL    |
|  7902 | FORD   | NULL    |
|  7935 | Rohan  | NULL    |
+-------+--------+---------+
12 rows in set (0.00 sec)

mysql> create table dept(
    -> deptno numeric(4) primary key ,
    -> dname varchar(20) not null,
    -> loc varchar(20) default 'nashik'
    -> check(loc in ('Mum','Pune','nashik')));
ERROR 1050 (42S01): Table 'dept' already exists
mysql> create table dept1(
    -> deptno numeric(4) primary key ,
    -> dname varchar(20) not null,
    -> loc varchar(20) default 'nashik'
    -> check(loc in ('Mum','Pune','nashik')));
Query OK, 0 rows affected (0.08 sec)

mysql> insert into dept1 values(10,'Accnts',default);
Query OK, 1 row affected (0.01 sec)

mysql> insert into dept1 values(90,'Finance','Pune');
Query OK, 1 row affected (0.01 sec)

mysql> select * from dept1;
+--------+---------+--------+
| deptno | dname   | loc    |
+--------+---------+--------+
|     10 | Accnts  | nashik |
|     90 | Finance | Pune   |
+--------+---------+--------+
2 rows in set (0.00 sec)



mysql> show tables;
+----------------+
| Tables_in_cdac |
+----------------+
| cardinfo       |
| cardtype       |
| customer       |
| customer1      |
| dept           |
| dept1          |
| emp            |
| employee       |
| locale         |
| new_emp        |
| new_emp1       |
| new_emp_4      |
| v1             |
| v2             |
| v3             |
| v4             |
+----------------+
16 rows in set (0.00 sec)

mysql> create table-- ename nn sal  10000-200000 pan uk deptno fk
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> desc dept;
+--------+--------------+------+-----+---------+-------+
| Field  | Type         | Null | Key | Default | Extra |
+--------+--------------+------+-----+---------+-------+
| DEPTNO | decimal(2,0) | NO   | PRI | NULL    |       |
| DNAME  | varchar(14)  | YES  |     | NULL    |       |
| LOC    | varchar(13)  | YES  |     | NULL    |       |
+--------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> desc dept1;
+--------+--------------+------+-----+---------+-------+
| Field  | Type         | Null | Key | Default | Extra |
+--------+--------------+------+-----+---------+-------+
| deptno | decimal(4,0) | NO   | PRI | NULL    |       |
| dname  | varchar(20)  | NO   |     | NULL    |       |
| loc    | varchar(20)  | YES  |     | nashik  |       |
+--------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> create table emp1(
    -> empno varchar(4) primary key 
    -> check (empno like 'e%'),
    -> ename varchar(20) not null,
    -> sal numeric(10,2) check sal between 1000 and 20000),
    -> pan char(10) unique,
    -> deptno numeric(4) references dept(dno));

mysql>  create table emp1(
    ->     -> empno varchar(4) primary key
    ->     -> check (empno like 'e%'),
    ->     -> ename varchar(20) not null,
    ->     -> sal numeric(10,2) check sal between 1000 and 20000),
    ->     -> pan char(10) unique,
    -> 
    -> ^C
mysql>  create table emp1(
    ->      empno varchar(4) primary key
    ->      check (empno like 'e%'),
    ->      ename varchar(20) not null,
    ->      sal numeric(10,2) check (sal between 1000 and 20000),
    ->      pan char(10) unique,
    ->      deptno numeric(4) references dept(dno));
Query OK, 0 rows affected (0.02 sec)

mysql> desc emp1;
+--------+---------------+------+-----+---------+-------+
| Field  | Type          | Null | Key | Default | Extra |
+--------+---------------+------+-----+---------+-------+
| empno  | varchar(4)    | NO   | PRI | NULL    |       |
| ename  | varchar(20)   | NO   |     | NULL    |       |
| sal    | decimal(10,2) | YES  |     | NULL    |       |
| pan    | char(10)      | YES  | UNI | NULL    |       |
| deptno | decimal(4,0)  | YES  |     | NULL    |       |
+--------+---------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql>  create table emp1(
    ->      empno varchar(4) primary key
    ->      check (empno like 'e%'),
    ->      ename varchar(20) not null,
    ->      sal numeric(10,2) check (sal between 1000 and 20000),
    ->      pan char(10) unique,
    -> 
    -> ^C
mysql>  create table emp7(
    ->      empno varchar(4) primary key
    ->      check (empno like 'e%'),
    ->      ename varchar(20) not null,
    ->      sal numeric(10,2) check (sal between 1000 and 20000),
    ->      pan char(10) unique,
    ->      deptno forign key );

Empty set (0.01 sec)

mysql> desc emp1;
+--------+---------------+------+-----+---------+-------+
| Field  | Type          | Null | Key | Default | Extra |
+--------+---------------+------+-----+---------+-------+
| empno  | varchar(4)    | NO   | PRI | NULL    |       |
| ename  | varchar(20)   | NO   |     | NULL    |       |
| sal    | decimal(10,2) | YES  |     | NULL    |       |
| pan    | char(10)      | YES  | UNI | NULL    |       |
| deptno | decimal(4,0)  | YES  |     | NULL    |       |
+--------+---------------+------+-----+---------+-------+
5 rows in set (0.00 sec)


mysql> insert into emp1 values('e100','Nikhil',3000,'BGRPN2817',10),('e200','varad',2400,'BGRPN28767',20);
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from emp1;
+-------+--------+---------+------------+--------+
| empno | ename  | sal     | pan        | deptno |
+-------+--------+---------+------------+--------+
| e100  | Nikhil | 3000.00 | BGRPN2817  |     10 |
| e200  | varad  | 2400.00 | BGRPN28767 |     20 |
+-------+--------+---------+------------+--------+
2 rows in set (0.00 sec)

mysql> ^C
mysql> drop table emp1;
Query OK, 0 rows affected (0.02 sec)

mysql> select * from emp1;


mysql>  create table emp1(
    ->      empno varchar(4) primary key
    ->      check (empno like 'e%'),
    ->      ename varchar(20) not null,
    ->      sal numeric(10,2) check (sal between 1000 and 20000),
    ->      pan char(10) unique,
    ->      deptno numeric(4),
    -> forign key (deptno) references dept1(deptno));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'key (deptno) references dept1(deptno))' at line 8
mysql>  create table emp1(
    ->      empno varchar(4) primary key
    ->      check (empno like 'e%'),
    ->      ename varchar(20) not null,
    ->      sal numeric(10,2) check (sal between 1000 and 20000),
    ->      pan char(10) unique,
    ->      deptno numeric(4),
    -> foreign key (deptno) references dept1(deptno));
Query OK, 0 rows affected (0.03 sec)
mysql> select * from dept1;
+--------+---------+--------+
| deptno | dname   | loc    |
+--------+---------+--------+
|     10 | Accnts  | nashik |
|     90 | Finance | Pune   |
+--------+---------+--------+
2 rows in set (0.00 sec)

mysql> insert into emp1 values('e100','Nikhil',3000,'BGRPN2817',10),('e200','varad',2400,'BGRPN28767',90);
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from emp1;
+-------+--------+---------+------------+--------+
| empno | ename  | sal     | pan        | deptno |
+-------+--------+---------+------------+--------+
| e100  | Nikhil | 3000.00 | BGRPN2817  |     10 |
| e200  | varad  | 2400.00 | BGRPN28767 |     90 |
+-------+--------+---------+------------+--------+
2 rows in set (0.00 sec)

mysql> create table nnn(
    -> empname varchar(20));
Query OK, 0 rows affected (0.02 sec)


mysql> desc nnn;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| empname | varchar(20) | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
1 row in set (0.00 sec)
mysql> alter table nnn modify column empname varchar(22);
Query OK, 0 rows affected (0.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table nnn modify column empname varchar(22) primary key;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc nnn;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| empname | varchar(22) | NO   | PRI | NULL    |       |
+---------+-------------+------+-----+---------+-------+
1 row in set (0.00 sec)

mysql> drop table nnn;
Query OK, 0 rows affected (0.01 sec)


mysql> select * from emp1;
+-------+--------+---------+------------+--------+
| empno | ename  | sal     | pan        | deptno |
+-------+--------+---------+------------+--------+
| e100  | Nikhil | 3000.00 | BGRPN2817  |     10 |
| e200  | varad  | 2400.00 | BGRPN28767 |     90 |
+-------+--------+---------+------------+--------+
2 rows in set (0.00 sec)


