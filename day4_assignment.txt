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

mysql> select * from emp where deptno=30;
+-------+--------+----------+------+------------+---------+---------+--------+
| EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL     | COMM    | DEPTNO |
+-------+--------+----------+------+------------+---------+---------+--------+
|  7499 | ALLEN  | SALESMAN | 7698 | 2012-01-02 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN | 7698 | 2013-01-02 | 1250.00 |  500.00 |     30 |
|  7654 | MARTIN | SALESMAN | 7698 | 2012-05-02 | 1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER  | 7839 | 2012-01-06 | 2850.00 |    NULL |     30 |
|  7844 | TURNER | SALESMAN | 7698 | 2012-01-20 | 1500.00 |    0.00 |     30 |
|  7900 | JAMES  | CLERK    | 7698 | 2012-03-02 |  950.00 |    NULL |     30 |
+-------+--------+----------+------+------------+---------+---------+--------+
6 rows in set (0.00 sec)


mysql> select ename,Empno,deptno from emp  where job='clerk';
+--------+-------+--------+
| ename  | Empno | deptno |
+--------+-------+--------+
| SMITH  |  7369 |     20 |
| ADAMS  |  7876 |     20 |
| JAMES  |  7900 |     30 |
| MILLER |  7934 |     10 |
+--------+-------+--------+
4 rows in set (0.00 sec)

mysql> select deptno,ename from emp where deptno>=20;
+--------+--------+
| deptno | ename  |
+--------+--------+
|     20 | SMITH  |
|     30 | ALLEN  |
|     30 | WARD   |
|     20 | JONES  |
|     30 | MARTIN |
|     30 | BLAKE  |
|     20 | SCOTT  |
|     30 | TURNER |
|     20 | ADAMS  |
|     30 | JAMES  |
|     20 | FORD   |
+--------+--------+
11 rows in set (0.00 sec)

mysql> select * from emp where comm> sal;
+-------+--------+----------+------+------------+---------+---------+--------+
| EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL     | COMM    | DEPTNO |
+-------+--------+----------+------+------------+---------+---------+--------+
|  7654 | MARTIN | SALESMAN | 7698 | 2012-05-02 | 1250.00 | 1400.00 |     30 |
+-------+--------+----------+------+------------+---------+---------+--------+
1 row in set (0.00 sec)

mysql> select * from emp where comm> 60/100*sal;
+-------+--------+----------+------+------------+---------+---------+--------+
| EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL     | COMM    | DEPTNO |
+-------+--------+----------+------+------------+---------+---------+--------+
|  7654 | MARTIN | SALESMAN | 7698 | 2012-05-02 | 1250.00 | 1400.00 |     30 |
+-------+--------+----------+------+------------+---------+---------+--------+
1 row in set (0.00 sec)

mysql> select * from emp where comm> 50/100*sal;
+-------+--------+----------+------+------------+---------+---------+--------+
| EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL     | COMM    | DEPTNO |
+-------+--------+----------+------+------------+---------+---------+--------+
|  7654 | MARTIN | SALESMAN | 7698 | 2012-05-02 | 1250.00 | 1400.00 |     30 |
+-------+--------+----------+------+------------+---------+---------+--------+
1 row in set (0.00 sec)

mysql> select ename,job,sal from emp where deptno=20 and sal>2000;
+-------+---------+---------+
| ename | job     | sal     |
+-------+---------+---------+
| JONES | MANAGER | 2975.00 |
| SCOTT | ANALYST | 3000.00 |
| FORD  | ANALYST | 3000.00 |
+-------+---------+---------+
3 rows in set (0.00 sec)


mysql> select * from emp where deptno=30 and sal>=1500 and job='salesman';
+-------+--------+----------+------+------------+---------+--------+--------+
| EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL     | COMM   | DEPTNO |
+-------+--------+----------+------+------------+---------+--------+--------+
|  7499 | ALLEN  | SALESMAN | 7698 | 2012-01-02 | 1600.00 | 300.00 |     30 |
|  7844 | TURNER | SALESMAN | 7698 | 2012-01-20 | 1500.00 |   0.00 |     30 |
+-------+--------+----------+------+------------+---------+--------+--------+
2 rows in set (0.00 sec)

mysql> select * from emp where job='president'|| job='manager';
+-------+-------+-----------+------+------------+---------+------+--------+
| EMPNO | ENAME | JOB       | MGR  | HIREDATE   | SAL     | COMM | DEPTNO |
+-------+-------+-----------+------+------------+---------+------+--------+
|  7566 | JONES | MANAGER   | 7839 | 2013-01-02 | 2975.00 | NULL |     20 |
|  7698 | BLAKE | MANAGER   | 7839 | 2012-01-06 | 2850.00 | NULL |     30 |
|  7782 | CLARK | MANAGER   | 7839 | 2012-01-06 | 2450.00 | NULL |     10 |
|  7839 | KING  | PRESIDENT | NULL | 2012-01-15 | 5000.00 | NULL |     10 |
+-------+-------+-----------+------+------------+---------+------+--------+
4 rows in set, 1 warning (0.00 sec)

mysql> select * from emp where job='manager' and deptno!=30;
+-------+-------+---------+------+------------+---------+------+--------+
| EMPNO | ENAME | JOB     | MGR  | HIREDATE   | SAL     | COMM | DEPTNO |
+-------+-------+---------+------+------------+---------+------+--------+
|  7566 | JONES | MANAGER | 7839 | 2013-01-02 | 2975.00 | NULL |     20 |
|  7782 | CLARK | MANAGER | 7839 | 2012-01-06 | 2450.00 | NULL |     10 |
+-------+-------+---------+------+------------+---------+------+--------+
2 rows in set (0.00 sec)

mysql> select * from emp where job='manager' and job='clerk' and deptno=10;
Empty set (0.00 sec)

mysql> select * from emp where job='manager' or  job='clerk' and deptno=10;
+-------+--------+---------+------+------------+---------+------+--------+
| EMPNO | ENAME  | JOB     | MGR  | HIREDATE   | SAL     | COMM | DEPTNO |
+-------+--------+---------+------+------------+---------+------+--------+
|  7566 | JONES  | MANAGER | 7839 | 2013-01-02 | 2975.00 | NULL |     20 |
|  7698 | BLAKE  | MANAGER | 7839 | 2012-01-06 | 2850.00 | NULL |     30 |
|  7782 | CLARK  | MANAGER | 7839 | 2012-01-06 | 2450.00 | NULL |     10 |
|  7934 | MILLER | CLERK   | 7782 | 2012-05-02 | 1300.00 | NULL |     10 |
+-------+--------+---------+------+------------+---------+------+--------+
4 rows in set (0.00 sec)

mysql> select * from emp where (job='manager' or  job='clerk') and deptno=10;
+-------+--------+---------+------+------------+---------+------+--------+
| EMPNO | ENAME  | JOB     | MGR  | HIREDATE   | SAL     | COMM | DEPTNO |
+-------+--------+---------+------+------------+---------+------+--------+
|  7782 | CLARK  | MANAGER | 7839 | 2012-01-06 | 2450.00 | NULL |     10 |
|  7934 | MILLER | CLERK   | 7782 | 2012-05-02 | 1300.00 | NULL |     10 |
+-------+--------+---------+------+------------+---------+------+--------+
2 rows in set (0.00 sec)

mysql> select * from emp where(job ='clerk' and deptno=10) and job='manager';
Empty set (0.00 sec)

mysql> select * from emp where(job ='clerk' and deptno=10) or job='manager';
+-------+--------+---------+------+------------+---------+------+--------+
| EMPNO | ENAME  | JOB     | MGR  | HIREDATE   | SAL     | COMM | DEPTNO |
+-------+--------+---------+------+------------+---------+------+--------+
|  7566 | JONES  | MANAGER | 7839 | 2013-01-02 | 2975.00 | NULL |     20 |
|  7698 | BLAKE  | MANAGER | 7839 | 2012-01-06 | 2850.00 | NULL |     30 |
|  7782 | CLARK  | MANAGER | 7839 | 2012-01-06 | 2450.00 | NULL |     10 |
|  7934 | MILLER | CLERK   | 7782 | 2012-05-02 | 1300.00 | NULL |     10 |
+-------+--------+---------+------+------------+---------+------+--------+
4 rows in set (0.00 sec)


mysql> select * from emp where (job='manager' and deptno=10 ) or (job='clerk' and deptno=20);
+-------+-------+---------+------+------------+---------+------+--------+
| EMPNO | ENAME | JOB     | MGR  | HIREDATE   | SAL     | COMM | DEPTNO |
+-------+-------+---------+------+------------+---------+------+--------+
|  7369 | SMITH | CLERK   | 7902 | 2012-02-02 |  800.00 | NULL |     20 |
|  7782 | CLARK | MANAGER | 7839 | 2012-01-06 | 2450.00 | NULL |     10 |
|  7876 | ADAMS | CLERK   | 7788 | 2013-01-02 | 1100.00 | NULL |     20 |
+-------+-------+---------+------+------------+---------+------+--------+
3 rows in set (0.00 sec)

mysql> select * from emp where (job!='clerk'or job!='manager') and sal>=2000; 
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
6 rows in set (0.00 sec)

mysql> select ename from emp  where deptno=20 and job!='clerk' and job!='manager';
+-------+
| ename |
+-------+
| SCOTT |
| FORD  |
+-------+
2 rows in set (0.00 sec)

mysql> select * from emp where sal>=1200 and sal<=1400;
+-------+--------+----------+------+------------+---------+---------+--------+
| EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL     | COMM    | DEPTNO |
+-------+--------+----------+------+------------+---------+---------+--------+
|  7521 | WARD   | SALESMAN | 7698 | 2013-01-02 | 1250.00 |  500.00 |     30 |
|  7654 | MARTIN | SALESMAN | 7698 | 2012-05-02 | 1250.00 | 1400.00 |     30 |
|  7934 | MILLER | CLERK    | 7782 | 2012-05-02 | 1300.00 |    NULL |     10 |
+-------+--------+----------+------+------------+---------+---------+--------+
3 rows in set (0.00 sec)

mysql> select * from emp where job='clerk' or job='analyst' or job='salesman';
+-------+--------+----------+------+------------+---------+---------+--------+
| EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL     | COMM    | DEPTNO |
+-------+--------+----------+------+------------+---------+---------+--------+
|  7369 | SMITH  | CLERK    | 7902 | 2012-02-02 |  800.00 |    NULL |     20 |
|  7499 | ALLEN  | SALESMAN | 7698 | 2012-01-02 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN | 7698 | 2013-01-02 | 1250.00 |  500.00 |     30 |
|  7654 | MARTIN | SALESMAN | 7698 | 2012-05-02 | 1250.00 | 1400.00 |     30 |
|  7788 | SCOTT  | ANALYST  | 7566 | 2012-01-10 | 3000.00 |    NULL |     20 |
|  7844 | TURNER | SALESMAN | 7698 | 2012-01-20 | 1500.00 |    0.00 |     30 |
|  7876 | ADAMS  | CLERK    | 7788 | 2013-01-02 | 1100.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK    | 7698 | 2012-03-02 |  950.00 |    NULL |     30 |
|  7902 | FORD   | ANALYST  | 7566 | 2012-04-02 | 3000.00 |    NULL |     20 |
|  7934 | MILLER | CLERK    | 7782 | 2012-05-02 | 1300.00 |    NULL |     10 |
+-------+--------+----------+------+------------+---------+---------+--------+
10 rows in set (0.00 sec)

mysql> select * from emp where job!='clerk' or job!='analyst' or job!='salesman';
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

mysql> select * from emp where job!='clerk' and job!='analyst' and job!='salesman';
+-------+-------+-----------+------+------------+---------+------+--------+
| EMPNO | ENAME | JOB       | MGR  | HIREDATE   | SAL     | COMM | DEPTNO |
+-------+-------+-----------+------+------------+---------+------+--------+
|  7566 | JONES | MANAGER   | 7839 | 2013-01-02 | 2975.00 | NULL |     20 |
|  7698 | BLAKE | MANAGER   | 7839 | 2012-01-06 | 2850.00 | NULL |     30 |
|  7782 | CLARK | MANAGER   | 7839 | 2012-01-06 | 2450.00 | NULL |     10 |
|  7839 | KING  | PRESIDENT | NULL | 2012-01-15 | 5000.00 | NULL |     10 |
+-------+-------+-----------+------+------------+---------+------+--------+
4 rows in set (0.00 sec)

mysql> select * from emp where comm=null;
Empty set (0.00 sec)

mysql> select * from emp where comm=Null;
Empty set (0.00 sec)


mysql> select * from emp where comm is NOT NULL;
+-------+--------+----------+------+------------+---------+---------+--------+
| EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL     | COMM    | DEPTNO |
+-------+--------+----------+------+------------+---------+---------+--------+
|  7499 | ALLEN  | SALESMAN | 7698 | 2012-01-02 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN | 7698 | 2013-01-02 | 1250.00 |  500.00 |     30 |
|  7654 | MARTIN | SALESMAN | 7698 | 2012-05-02 | 1250.00 | 1400.00 |     30 |
|  7844 | TURNER | SALESMAN | 7698 | 2012-01-20 | 1500.00 |    0.00 |     30 |
+-------+--------+----------+------+------------+---------+---------+--------+
4 rows in set (0.00 sec)

mysql> select * from emp where comm is  NULL;
+-------+--------+-----------+------+------------+---------+------+--------+
| EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL     | COMM | DEPTNO |
+-------+--------+-----------+------+------------+---------+------+--------+
|  7369 | SMITH  | CLERK     | 7902 | 2012-02-02 |  800.00 | NULL |     20 |
|  7566 | JONES  | MANAGER   | 7839 | 2013-01-02 | 2975.00 | NULL |     20 |
|  7698 | BLAKE  | MANAGER   | 7839 | 2012-01-06 | 2850.00 | NULL |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 2012-01-06 | 2450.00 | NULL |     10 |
|  7788 | SCOTT  | ANALYST   | 7566 | 2012-01-10 | 3000.00 | NULL |     20 |
|  7839 | KING   | PRESIDENT | NULL | 2012-01-15 | 5000.00 | NULL |     10 |
|  7876 | ADAMS  | CLERK     | 7788 | 2013-01-02 | 1100.00 | NULL |     20 |
|  7900 | JAMES  | CLERK     | 7698 | 2012-03-02 |  950.00 | NULL |     30 |
|  7902 | FORD   | ANALYST   | 7566 | 2012-04-02 | 3000.00 | NULL |     20 |
|  7934 | MILLER | CLERK     | 7782 | 2012-05-02 | 1300.00 | NULL |     10 |
+-------+--------+-----------+------+------------+---------+------+--------+
10 rows in set (0.00 sec)

mysql> select * from emp where comm is  null;
+-------+--------+-----------+------+------------+---------+------+--------+
| EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL     | COMM | DEPTNO |
+-------+--------+-----------+------+------------+---------+------+--------+
|  7369 | SMITH  | CLERK     | 7902 | 2012-02-02 |  800.00 | NULL |     20 |
|  7566 | JONES  | MANAGER   | 7839 | 2013-01-02 | 2975.00 | NULL |     20 |
|  7698 | BLAKE  | MANAGER   | 7839 | 2012-01-06 | 2850.00 | NULL |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 2012-01-06 | 2450.00 | NULL |     10 |
|  7788 | SCOTT  | ANALYST   | 7566 | 2012-01-10 | 3000.00 | NULL |     20 |
|  7839 | KING   | PRESIDENT | NULL | 2012-01-15 | 5000.00 | NULL |     10 |
|  7876 | ADAMS  | CLERK     | 7788 | 2013-01-02 | 1100.00 | NULL |     20 |
|  7900 | JAMES  | CLERK     | 7698 | 2012-03-02 |  950.00 | NULL |     30 |
|  7902 | FORD   | ANALYST   | 7566 | 2012-04-02 | 3000.00 | NULL |     20 |
|  7934 | MILLER | CLERK     | 7782 | 2012-05-02 | 1300.00 | NULL |     10 |
+-------+--------+-----------+------+------------+---------+------+--------+
10 rows in set (0.00 sec)

mysql> select * from emp where comm=null;
Empty set (0.00 sec)

mysql> select * from emp where comm=0;
+-------+--------+----------+------+------------+---------+------+--------+
| EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL     | COMM | DEPTNO |
+-------+--------+----------+------+------------+---------+------+--------+
|  7844 | TURNER | SALESMAN | 7698 | 2012-01-20 | 1500.00 | 0.00 |     30 |
+-------+--------+----------+------+------------+---------+------+--------+
1 row in set (0.00 sec)

mysql> select * from emp where comm is not null;;
+-------+--------+----------+------+------------+---------+---------+--------+
| EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL     | COMM    | DEPTNO |
+-------+--------+----------+------+------------+---------+---------+--------+
|  7499 | ALLEN  | SALESMAN | 7698 | 2012-01-02 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN | 7698 | 2013-01-02 | 1250.00 |  500.00 |     30 |
|  7654 | MARTIN | SALESMAN | 7698 | 2012-05-02 | 1250.00 | 1400.00 |     30 |
|  7844 | TURNER | SALESMAN | 7698 | 2012-01-20 | 1500.00 |    0.00 |     30 |
+-------+--------+----------+------+------------+---------+---------+--------+
4 rows in set (0.00 sec)

ERROR: 
No query specified

mysql> select job from emp where comm is not null;;
+----------+
| job      |
+----------+
| SALESMAN |
| SALESMAN |
| SALESMAN |
| SALESMAN |
+----------+
4 rows in set (0.00 sec)

ERROR: 
No query specified

mysql> select distinct job from emp where comm is not null;;
+----------+
| job      |
+----------+
| SALESMAN |
+----------+
1 row in set (0.00 sec)

ERROR: 
No query specified

mysql> select distinct job from emp where comm is not null;;
+----------+
| job      |
+----------+
| SALESMAN |
+----------+
1 row in set (0.00 sec)

ERROR: 
No query specified

mysql> select distinct (job) from emp where comm is not null;;
+----------+
| job      |
+----------+
| SALESMAN |
+----------+
1 row in set (0.00 sec)

ERROR: 
No query specified

mysql> select * from emp where comm is null or comm<=100;
+-------+--------+-----------+------+------------+---------+------+--------+
| EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL     | COMM | DEPTNO |
+-------+--------+-----------+------+------------+---------+------+--------+
|  7369 | SMITH  | CLERK     | 7902 | 2012-02-02 |  800.00 | NULL |     20 |
|  7566 | JONES  | MANAGER   | 7839 | 2013-01-02 | 2975.00 | NULL |     20 |
|  7698 | BLAKE  | MANAGER   | 7839 | 2012-01-06 | 2850.00 | NULL |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 2012-01-06 | 2450.00 | NULL |     10 |
|  7788 | SCOTT  | ANALYST   | 7566 | 2012-01-10 | 3000.00 | NULL |     20 |
|  7839 | KING   | PRESIDENT | NULL | 2012-01-15 | 5000.00 | NULL |     10 |
|  7844 | TURNER | SALESMAN  | 7698 | 2012-01-20 | 1500.00 | 0.00 |     30 |
|  7876 | ADAMS  | CLERK     | 7788 | 2013-01-02 | 1100.00 | NULL |     20 |
|  7900 | JAMES  | CLERK     | 7698 | 2012-03-02 |  950.00 | NULL |     30 |
|  7902 | FORD   | ANALYST   | 7566 | 2012-04-02 | 3000.00 | NULL |     20 |
|  7934 | MILLER | CLERK     | 7782 | 2012-05-02 | 1300.00 | NULL |     10 |
+-------+--------+-----------+------+------------+---------+------+--------+
11 rows in set (0.00 sec)



mysql> select * from emp where ename like 'm%';
+-------+--------+----------+------+------------+---------+---------+--------+
| EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL     | COMM    | DEPTNO |
+-------+--------+----------+------+------------+---------+---------+--------+
|  7654 | MARTIN | SALESMAN | 7698 | 2012-05-02 | 1250.00 | 1400.00 |     30 |
|  7934 | MILLER | CLERK    | 7782 | 2012-05-02 | 1300.00 |    NULL |     10 |
+-------+--------+----------+------+------------+---------+---------+--------+
2 rows in set (0.00 sec)

mysql> select * from emp where ename like '%m';
Empty set (0.00 sec)

mysql> select * from emp where ename like '%m%;
    '> select * from emp where ename like '%m%';
    '> select * from emp where ename like '%m%';
    '> ^C
mysql> select * from emp where ename like '%m%';
+-------+--------+----------+------+------------+---------+---------+--------+
| EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL     | COMM    | DEPTNO |
+-------+--------+----------+------+------------+---------+---------+--------+
|  7369 | SMITH  | CLERK    | 7902 | 2012-02-02 |  800.00 |    NULL |     20 |
|  7654 | MARTIN | SALESMAN | 7698 | 2012-05-02 | 1250.00 | 1400.00 |     30 |
|  7876 | ADAMS  | CLERK    | 7788 | 2013-01-02 | 1100.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK    | 7698 | 2012-03-02 |  950.00 |    NULL |     30 |
|  7934 | MILLER | CLERK    | 7782 | 2012-05-02 | 1300.00 |    NULL |     10 |
+-------+--------+----------+------+------------+---------+---------+--------+
5 rows in set (0.00 sec)

mysql> select ename from emp where LENGTH(ename)=5 and ename like 'm%';
Empty set (0.00 sec)

mysql> select ename from emp where ename like '____n';
+-------+
| ename |
+-------+
| ALLEN |
+-------+
1 row in set (0.00 sec)

mysql> select ename from emp where ename like '__r%';
+--------+
| ename  |
+--------+
| WARD   |
| MARTIN |
| TURNER |
| FORD   |
+--------+
4 rows in set (0.00 sec)

ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(mm)=2' at line 1
mysql> select * from emp where month(hiredate)=2;
+-------+-------+-------+------+------------+--------+------+--------+
| EMPNO | ENAME | JOB   | MGR  | HIREDATE   | SAL    | COMM | DEPTNO |
+-------+-------+-------+------+------------+--------+------+--------+
|  7369 | SMITH | CLERK | 7902 | 2012-02-02 | 800.00 | NULL |     20 |
+-------+-------+-------+------+------------+--------+------+--------+
1 row in set (0.00 sec)

mysql> select * from emp where year(hiredate)='2012' and job='manager';
+-------+-------+---------+------+------------+---------+------+--------+
| EMPNO | ENAME | JOB     | MGR  | HIREDATE   | SAL     | COMM | DEPTNO |
+-------+-------+---------+------+------------+---------+------+--------+
|  7698 | BLAKE | MANAGER | 7839 | 2012-01-06 | 2850.00 | NULL |     30 |
|  7782 | CLARK | MANAGER | 7839 | 2012-01-06 | 2450.00 | NULL |     10 |
+-------+-------+---------+------+------------+---------+------+--------+
2 rows in set (0.00 sec)

mysql> select * from emp where ename like 'a';
Empty set (0.00 sec)



mysql> select * from emp where ename regexp '^[a]';
+-------+-------+----------+------+------------+---------+--------+--------+
| EMPNO | ENAME | JOB      | MGR  | HIREDATE   | SAL     | COMM   | DEPTNO |
+-------+-------+----------+------+------------+---------+--------+--------+
|  7499 | ALLEN | SALESMAN | 7698 | 2012-01-02 | 1600.00 | 300.00 |     30 |
|  7876 | ADAMS | CLERK    | 7788 | 2013-01-02 | 1100.00 |   NULL |     20 |
+-------+-------+----------+------+------------+---------+--------+--------+
2 rows in set (0.00 sec)

mysql> select * from emp where ename regexp '[a]';
+-------+--------+----------+------+------------+---------+---------+--------+
| EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL     | COMM    | DEPTNO |
+-------+--------+----------+------+------------+---------+---------+--------+
|  7499 | ALLEN  | SALESMAN | 7698 | 2012-01-02 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN | 7698 | 2013-01-02 | 1250.00 |  500.00 |     30 |
|  7654 | MARTIN | SALESMAN | 7698 | 2012-05-02 | 1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER  | 7839 | 2012-01-06 | 2850.00 |    NULL |     30 |
|  7782 | CLARK  | MANAGER  | 7839 | 2012-01-06 | 2450.00 |    NULL |     10 |
|  7876 | ADAMS  | CLERK    | 7788 | 2013-01-02 | 1100.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK    | 7698 | 2012-03-02 |  950.00 |    NULL |     30 |
+-------+--------+----------+------+------------+---------+---------+--------+
7 rows in set (0.00 sec)


mysql> exit;
