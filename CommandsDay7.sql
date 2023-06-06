
mysql> use cdac;
mysql> -- Integrity Constraint 
mysql> -- 1.Entity Integrity 2.Referential Integrity 3.Domain Integrity 
mysql> /* on delete
   /*> cascase
   /*> on delete set null
   /*> on update cascade 
   /*> */

mysql> use cdac
Database changed
mysql> select * from dept;
+--------+------------+----------+
| DEPTNO | DNAME      | LOC      |
+--------+------------+----------+
|     10 | ACCOUNTING | NEW YORK |
|     20 | RESEARCH   | DALLAS   |
|     30 | SALES      | CHICAGO  |
|     40 | OPERATIONS | BOSTON   |
+--------+------------+----------+
4 rows in set (0.02 sec)

mysql> select * from dept1;
+--------+---------+--------+
| deptno | dname   | loc    |
+--------+---------+--------+
|     10 | Accnts  | nashik |
|     90 | Finance | Pune   |
+--------+---------+--------+
2 rows in set (0.01 sec)

mysql> select * from emp
    -> ;
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
12 rows in set (0.01 sec)

mysql> select * from emp1;
+-------+--------+---------+------------+--------+
| empno | ename  | sal     | pan        | deptno |
+-------+--------+---------+------------+--------+
| e100  | Nikhil | 3000.00 | BGRPN2817  |     10 |
| e200  | varad  | 2400.00 | BGRPN28767 |     90 |
+-------+--------+---------+------------+--------+
2 rows in set (0.00 sec)

mysql>   create table emp1(
    ->           empno varchar(4) primary key
    ->           check (empno like 'e%'),
    ->           ename varchar(20) not null,
    ->           sal numeric(10,2) check (sal between 1000 and 20000),
    ->           pan char(10) unique,
    ->           deptno numeric(4),
    ->      foreign key (deptno) references dept1(deptno)
    -> on delete cascade
    -> on update cascade);

mysql>   create table emp3(
    ->           empno varchar(4) primary key
    ->           check (empno like 'e%'),
    ->           ename varchar(20) not null,
    ->           sal numeric(10,2) check (sal between 1000 and 20000),
    ->           pan char(10) unique,
    ->           deptno numeric(4),
    ->      foreign key (deptno) references dept1(deptno)
    -> on delete cascade
    -> on update cascade);
Query OK, 0 rows affected (0.08 sec)


Database changed

mysql> create table dept(
    ->   deptno number(2,0),
    ->   dname  varchar2(14),
    ->   loc    varchar2(13),
    ->   constraint pk_dept primary key (deptno)
    -> );

mysql> exit;
--Ranking function
select ename,sal,rank() over(order by sal desc) as Rank from emp;

-- Dense rank 
dense_rank()
mysql> show tables;
ERROR 1046 (3D000): No database selected
mysql> use cdac;
Database changed
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
| emp1           |
| emp3           |
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

