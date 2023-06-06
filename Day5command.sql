mysql> use cdac
Database changed
mysql> create table(
    -> empno int not null auto_increment,
    -> ename varchar(20),
    -> salary numeric(10,2));

mysql> system table();


-- displaying the user
mysql> select user();
+----------------+
| user()         |
+----------------+
| root@localhost |
+----------------+
1 row in set (0.01 sec)

mysql> select database();
+------------+
| database() |
+------------+
| cdac       |
+------------+
1 row in set (0.00 sec)


mysql> select curtime();
+-----------+
| curtime() |
+-----------+
| 14:42:04  |
+-----------+
1 row in set (0.01 sec)

mysql> use cdac
Database changed
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
14 rows in set (0.01 sec)

mysql> select datadiff(curdate(), hiredate());
ERROR 1305 (42000): FUNCTION cdac.datadiff does not exist
mysql> select datediff(curdate(), hiredate());
ERROR 1305 (42000): FUNCTION cdac.hiredate does not exist
mysql> select datediff(curdate(), hiredate()) from emp;
ERROR 1305 (42000): FUNCTION cdac.hiredate does not exist
mysql> select hiredate from emp where datediff(curdate(),hiredate());
ERROR 1305 (42000): FUNCTION cdac.hiredate does not exist
mysql> select hiredate,round(datediff(curdate(),hiredate));
ERROR 1054 (42S22): Unknown column 'hiredate' in 'field list'
mysql> select hiredate,round(datediff(curdate(),hiredate)/365);
ERROR 1054 (42S22): Unknown column 'hiredate' in 'field list'
mysql> select ename,round(datediff(curdate(),hiredate)/365);
ERROR 1054 (42S22): Unknown column 'ename' in 'field list'
mysql> select ename,round(datediff(curdate(),hiredate)/365);use
ERROR 1054 (42S22): Unknown column 'ename' in 'field list'
    -> use cdac
    -> ;

mysql> use cdac;
Database changed
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

mysql> select ename,round(datediff(curdate(),hiredate)/365) as expre from emp;
+--------+-------+
| ename  | expre |
+--------+-------+
| SMITH  |    11 |
| ALLEN  |    11 |
| WARD   |    10 |
| JONES  |    10 |
| MARTIN |    11 |
| BLAKE  |    11 |
| CLARK  |    11 |
| SCOTT  |    11 |
| KING   |    11 |
| TURNER |    11 |
| ADAMS  |    10 |
| JAMES  |    11 |
| FORD   |    11 |
| MILLER |    11 |
+--------+-------+
14 rows in set (0.00 sec)

mysql> select datediff(curdate(),'1998-07-08');
+----------------------------------+
| datediff(curdate(),'1998-07-08') |
+----------------------------------+
|                             9096 |
+----------------------------------+
1 row in set (0.00 sec)

mysql> select datediff(curdate(),'1998-07-08')/365;
+--------------------------------------+
| datediff(curdate(),'1998-07-08')/365 |
+--------------------------------------+
|                              24.9205 |
+--------------------------------------+
1 row in set (0.00 sec)

mysql> select round( datediff(curdate(),'1998-07-08')/365);
+----------------------------------------------+
| round( datediff(curdate(),'1998-07-08')/365) |
+----------------------------------------------+
|                                           25 |
+----------------------------------------------+
1 row in set (0.00 sec)

mysql> select addtime('2023-05-04 10:23:45','5:12:05');
+------------------------------------------+
| addtime('2023-05-04 10:23:45','5:12:05') |
+------------------------------------------+
| 2023-05-04 15:35:50                      |
+------------------------------------------+
1 row in set (0.00 sec)

mysql> select adddate(curdate(),10);
+-----------------------+
| adddate(curdate(),10) |
+-----------------------+
| 2023-06-13            |
+-----------------------+
1 row in set (0.00 sec)

mysql> select addtime(curtime(),'5:12:05');
+------------------------------+
| addtime(curtime(),'5:12:05') |
+------------------------------+
| 20:22:09                     |
+------------------------------+
1 row in set (0.01 sec)
mysql> select addtime(curtime(),'5:12:05') as 'time after 5 hrs';
+------------------+
| time after 5 hrs |
+------------------+
| 20:24:15         |
+------------------+
1 row in set (0.00 sec)

mysql> select ename,hiredate,date_add(hiredate,interval 5 month)from emp;
+--------+------------+-------------------------------------+
| ename  | hiredate   | date_add(hiredate,interval 5 month) |
+--------+------------+-------------------------------------+
| SMITH  | 2012-02-02 | 2012-07-02                          |
| ALLEN  | 2012-01-02 | 2012-06-02                          |
| WARD   | 2013-01-02 | 2013-06-02                          |
| JONES  | 2013-01-02 | 2013-06-02                          |
| MARTIN | 2012-05-02 | 2012-10-02                          |
| BLAKE  | 2012-01-06 | 2012-06-06                          |
| CLARK  | 2012-01-06 | 2012-06-06                          |
| SCOTT  | 2012-01-10 | 2012-06-10                          |
| KING   | 2012-01-15 | 2012-06-15                          |
| TURNER | 2012-01-20 | 2012-06-20                          |
| ADAMS  | 2013-01-02 | 2013-06-02                          |
| JAMES  | 2012-03-02 | 2012-08-02                          |
| FORD   | 2012-04-02 | 2012-09-02                          |
| MILLER | 2012-05-02 | 2012-10-02                          |
+--------+------------+-------------------------------------+
14 rows in set (0.00 sec)

mysql> select ename,hiredate,date_add(hiredate,interval 5 year)from emp;
+--------+------------+------------------------------------+
| ename  | hiredate   | date_add(hiredate,interval 5 year) |
+--------+------------+------------------------------------+
| SMITH  | 2012-02-02 | 2017-02-02                         |
| ALLEN  | 2012-01-02 | 2017-01-02                         |
| WARD   | 2013-01-02 | 2018-01-02                         |
| JONES  | 2013-01-02 | 2018-01-02                         |
| MARTIN | 2012-05-02 | 2017-05-02                         |
| BLAKE  | 2012-01-06 | 2017-01-06                         |
| CLARK  | 2012-01-06 | 2017-01-06                         |
| SCOTT  | 2012-01-10 | 2017-01-10                         |
| KING   | 2012-01-15 | 2017-01-15                         |
| TURNER | 2012-01-20 | 2017-01-20                         |
| ADAMS  | 2013-01-02 | 2018-01-02                         |
| JAMES  | 2012-03-02 | 2017-03-02                         |
| FORD   | 2012-04-02 | 2017-04-02                         |
| MILLER | 2012-05-02 | 2017-05-02                         |
+--------+------------+------------------------------------+
14 rows in set (0.00 sec)

mysql> select date_format(curdate(),'%w');
+-----------------------------+
| date_format(curdate(),'%w') |
+-----------------------------+
| 6                           |
+-----------------------------+
1 row in set (0.00 sec)

mysql> select date_format(curdate(),'%M');
+-----------------------------+
| date_format(curdate(),'%M') |
+-----------------------------+
| June                        |
+-----------------------------+
1 row in set (0.01 sec)

mysql> select date_format(curdate(),'%y');
+-----------------------------+
| date_format(curdate(),'%y') |
+-----------------------------+
| 23                          |
+-----------------------------+
1 row in set (0.00 sec)

mysql> select date_format(curdate(),'%a');
+-----------------------------+
| date_format(curdate(),'%a') |
+-----------------------------+
| Sat                         |
+-----------------------------+
1 row in set (0.00 sec)

mysql> select date_format(curdate(),'%a') as 'todays day';
+------------+
| todays day |
+------------+
| Sat        |
+------------+
1 row in set (0.00 sec)

mysql> select date_format(curdate(),'%h') ;
+-----------------------------+
| date_format(curdate(),'%h') |
+-----------------------------+
| 12                          |
+-----------------------------+
1 row in set (0.00 sec)

mysql> select date_format(curdate(),'%p') ;
+-----------------------------+
| date_format(curdate(),'%p') |
+-----------------------------+
| AM                          |
+-----------------------------+
1 row in set (0.00 sec)

mysql> select date_format(curdate(),'%a') ;
+-----------------------------+
| date_format(curdate(),'%a') |
+-----------------------------+
| Sat                         |
+-----------------------------+
1 row in set (0.00 sec)

mysql> select date_format(curdate(),'%A') ;
+-----------------------------+
| date_format(curdate(),'%A') |
+-----------------------------+
| A                           |
+-----------------------------+
1 row in set (0.00 sec)

mysql> select date_format(curdate(),'%p') ;
+-----------------------------+
| date_format(curdate(),'%p') |
+-----------------------------+
| AM                          |
+-----------------------------+
1 row in set (0.00 sec)

mysql> select date_format(curdate(),'%P') ;
+-----------------------------+
| date_format(curdate(),'%P') |
+-----------------------------+
| P                           |
+-----------------------------+
1 row in set (0.00 sec)

mysql> select date_format(curtime(),'%P') ;
+-----------------------------+
| date_format(curtime(),'%P') |
+-----------------------------+
| P                           |
+-----------------------------+
1 row in set (0.00 sec)

mysql> select date_format(curtime(),'%p') ;
+-----------------------------+
| date_format(curtime(),'%p') |
+-----------------------------+
| PM                          |
+-----------------------------+
1 row in set (0.00 sec)

mysql> select date_format(curdate(),'%w');
+-----------------------------+
| date_format(curdate(),'%w') |
+-----------------------------+
| 6                           |
+-----------------------------+
1 row in set (0.00 sec)

mysql> select DAYOFWEEK(curdate());
+----------------------+
| DAYOFWEEK(curdate()) |
+----------------------+
|                    7 |
+----------------------+
1 row in set (0.00 sec)


