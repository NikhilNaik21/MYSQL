--using database cdac
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

--displaying dept table
mysql> select * from dept1;
+--------+---------+--------+
| deptno | dname   | loc    |
+--------+---------+--------+
|     10 | Accnts  | nashik |
|     90 | Finance | Pune   |
+--------+---------+--------+
2 rows in set (0.01 sec)
--Displaying emp table
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

-- creating table emp1 with constraints
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


mysql> use cdac 
Database changed
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

mysql> alter table emp add column Nikhil varchar(20);
Query OK, 0 rows affected (0.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from emp;
+-------+--------+----------+------+------------+---------+---------+--------+--------+
| EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL     | COMM    | DEPTNO | Nikhil |
+-------+--------+----------+------+------------+---------+---------+--------+--------+
|  7369 | SMITH  | CLERK    | 7902 | 2012-02-02 |  800.00 |    NULL |     20 | NULL   |
|  7499 | ALLEN  | SALESMAN | 7698 | 2012-01-02 | 1600.00 |  300.00 |     30 | NULL   |
|  7521 | WARD   | SALESMAN | 7698 | 2013-01-02 | 1250.00 |  500.00 |     30 | NULL   |
|  7566 | JONES  | MANAGER  | 7839 | 2013-01-02 | 2975.00 |    NULL |     20 | NULL   |
|  7654 | MARTIN | SALESMAN | 7698 | 2012-05-02 | 1250.00 | 1400.00 |     30 | NULL   |
|  7698 | BLAKE  | MANAGER  | 7839 | 2012-01-06 | 2850.00 |    NULL |     30 | NULL   |
|  7788 | SCOTT  | ANALYST  | 7566 | 2012-01-10 | 3000.00 |    NULL |     20 | NULL   |
|  7844 | TURNER | SALESMAN | 7698 | 2012-01-20 | 1500.00 |    0.00 |     30 | NULL   |
|  7876 | ADAMS  | CLERK    | 7788 | 2013-01-02 | 1100.00 |    NULL |     20 | NULL   |
|  7900 | JAMES  | CLERK    | 7698 | 2012-03-02 |  950.00 |    NULL |     30 | NULL   |
|  7902 | FORD   | ANALYST  | 7566 | 2012-04-02 | 3000.00 |    NULL |     20 | NULL   |
|  7935 | Rohan  | NULL     | NULL | 2023-01-12 |    NULL |    NULL |   NULL | NULL   |
+-------+--------+----------+------+------------+---------+---------+--------+--------+
12 rows in set (0.00 sec)

mysql> alter table emp drop column Nikhil ;
Query OK, 0 rows affected (0.03 sec)
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


mysql> alter table emp rename column Sal to SALARY ;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from emp;
+-------+--------+----------+------+------------+---------+---------+--------+
| EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SALARY  | COMM    | DEPTNO |
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


mysql> alter table emp rename to empMin;
Query OK, 0 rows affected (0.03 sec)

mysql> select * from emp;

mysql> select * from empMIn;
+-------+--------+----------+------+------------+---------+---------+--------+
| EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SALARY  | COMM    | DEPTNO |
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

mysql> alter table empmin rename to emp;
Query OK, 0 rows affected (0.07 sec)

mysql> select * from emp;
+-------+--------+----------+------+------------+---------+---------+--------+
| EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SALARY  | COMM    | DEPTNO |
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

mysql> select table_name, constraint_type,constraint_name from information_schema.table_constraints where table_name ='emp1';
+------------+-----------------+-----------------+
| TABLE_NAME | CONSTRAINT_TYPE | CONSTRAINT_NAME |
+------------+-----------------+-----------------+
| emp1       | UNIQUE          | pan             |
| emp1       | PRIMARY KEY     | PRIMARY         |
| emp1       | FOREIGN KEY     | emp1_ibfk_1     |
| emp1       | CHECK           | emp1_chk_1      |
| emp1       | CHECK           | emp1_chk_2      |
+------------+-----------------+-----------------+
5 rows in set (0.01 sec)

mysql> tee D:\Nashik03-04-2023\MYSQL_D\CommandsDay7.txt
mysql> select table_name, constraint_type,constraint_name from information_schema.table_constraints where table_name ='emp1';
+------------+-----------------+-----------------+
| TABLE_NAME | CONSTRAINT_TYPE | CONSTRAINT_NAME |
+------------+-----------------+-----------------+
| emp1       | UNIQUE          | pan             |
| emp1       | PRIMARY KEY     | PRIMARY         |
| emp1       | FOREIGN KEY     | emp1_ibfk_1     |
| emp1       | CHECK           | emp1_chk_1      |
| emp1       | CHECK           | emp1_chk_2      |
+------------+-----------------+-----------------+
5 rows in set (0.00 sec)

mysql> alter table emp drop check(emp1);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(emp1)' at line 1
mysql> desc emp1;
+--------+---------------+------+-----+---------+-------+
| Field  | Type          | Null | Key | Default | Extra |
+--------+---------------+------+-----+---------+-------+
| empno  | varchar(4)    | NO   | PRI | NULL    |       |
| ename  | varchar(20)   | NO   |     | NULL    |       |
| sal    | decimal(10,2) | YES  |     | NULL    |       |
| pan    | char(10)      | YES  | UNI | NULL    |       |
| deptno | decimal(4,0)  | YES  | MUL | NULL    |       |
+--------+---------------+------+-----+---------+-------+
5 rows in set (0.01 sec)

mysql> select * from emp;
+-------+--------+----------+------+------------+---------+---------+--------+
| EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SALARY  | COMM    | DEPTNO |
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

mysql> 


mysql> select ename from emp where sal = (select max(salary) from emp);
ERROR 1054 (42S22): Unknown column 'sal' in 'where clause'
mysql> select ename from emp where salary = (select max(salary) from emp);
+-------+
| ename |
+-------+
| SCOTT |
| FORD  |
+-------+
2 rows in set (0.00 sec)


mysql> select ename,salary from emp where salary > (select avg(salary) from emp);
+-------+---------+
| ename | salary  |
+-------+---------+
| SCOTT | 3000.00 |
| FORD  | 3000.00 |
| JONES | 2975.00 |
| BLAKE | 2850.00 |
+-------+---------+
4 rows in set (0.00 sec)

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

mysql>  (select deptno from dept  where dname = 'Accounting');
+--------+
| deptno |
+--------+
|     10 |
+--------+
1 row in set (0.00 sec)


mysql> select ename from emp where deptno= (select deptno from dept  where dname = 'research');
+-------+
| ename |
+-------+
| SMITH |
| JONES |
| SCOTT |
| ADAMS |
| FORD  |
+-------+
5 rows in set (0.00 sec)

mysql> select deptno from dept where loc = 'dallas';
+--------+
| deptno |
+--------+
|     20 |
+--------+
1 row in set (0.00 sec)

mysql> select ename, job from emp where deptno = (select deptno from dept where loc = 'dallas');
+-------+---------+
| ename | job     |
+-------+---------+
| SMITH | CLERK   |
| JONES | MANAGER |
| SCOTT | ANALYST |
| ADAMS | CLERK   |
| FORD  | ANALYST |
+-------+---------+
5 rows in set (0.00 sec)

mysql> select ename,job from emp where deptno !=(select deptno from dept where loc = 'dallas');
+--------+----------+
| ename  | job      |
+--------+----------+
| ALLEN  | SALESMAN |
| WARD   | SALESMAN |
| MARTIN | SALESMAN |
| BLAKE  | MANAGER  |
| TURNER | SALESMAN |
| JAMES  | CLERK    |
+--------+----------+
6 rows in set (0.00 sec)

mysql> select ename,job from emp where job in  (select job from emp where ename in ('smith' ,'allen;='));
+-------+-------+
| ename | job   |
+-------+-------+
| SMITH | CLERK |
| ADAMS | CLERK |
| JAMES | CLERK |
+-------+-------+
3 rows in set (0.01 sec)

mysql> select ename,job from emp where job in  (select job from emp where ename in ('smith' ,'allen'));
+--------+----------+
| ename  | job      |
+--------+----------+
| SMITH  | CLERK    |
| ALLEN  | SALESMAN |
| WARD   | SALESMAN |
| MARTIN | SALESMAN |
| TURNER | SALESMAN |
| ADAMS  | CLERK    |
| JAMES  | CLERK    |
+--------+----------+
7 rows in set (0.00 sec)

mysql> select ename,job from emp where job  not in  (select job from emp where ename in ('smith' ,'allen'));
+-------+---------+
| ename | job     |
+-------+---------+
| JONES | MANAGER |
| BLAKE | MANAGER |
| SCOTT | ANALYST |
| FORD  | ANALYST |
+-------+---------+
4 rows in set (0.01 sec)

mysql> select salary from emp where deptno =20;
+---------+
| salary  |
+---------+
|  800.00 |
| 2975.00 |
| 3000.00 |
| 1100.00 |
| 3000.00 |
+---------+
5 rows in set (0.00 sec)

mysql> select max(salary) from emp where deptno =20;
+-------------+
| max(salary) |
+-------------+
|     3000.00 |
+-------------+
1 row in set (0.00 sec)

mysql> select ename, salary from emp where salary > (select salary from emp where deptno =20);
ERROR 1242 (21000): Subquery returns more than 1 row
mysql> select ename, salary from emp where salary >all (select salary from emp where deptno =20);
Empty set (0.04 sec)

mysql> select ename, salary from emp where salary > (select max(salary) from emp where deptno =20);
Empty set (0.00 sec)

mysql> select ename, salary from emp where salary > (select max(salary) from emp where deptno =30);
+-------+---------+
| ename | salary  |
+-------+---------+
| SCOTT | 3000.00 |
| FORD  | 3000.00 |
| JONES | 2975.00 |
+-------+---------+
3 rows in set (0.00 sec)

mysql> select ename, salary from emp where salary >all (select salary from emp where deptno =30);
+-------+---------+
| ename | salary  |
+-------+---------+
| JONES | 2975.00 |
| SCOTT | 3000.00 |
| FORD  | 3000.00 |
+-------+---------+
3 rows in set (0.00 sec)

mysql> select ename, salary from emp where salary >all (select salary from emp where deptno =20);
Empty set (0.00 sec)

mysql> select ename, salary from emp where salary >all (select salary from emp where deptno =10);
+--------+---------+
| ename  | salary  |
+--------+---------+
| SMITH  |  800.00 |
| ALLEN  | 1600.00 |
| WARD   | 1250.00 |
| JONES  | 2975.00 |
| MARTIN | 1250.00 |
| BLAKE  | 2850.00 |
| SCOTT  | 3000.00 |
| TURNER | 1500.00 |
| ADAMS  | 1100.00 |
| JAMES  |  950.00 |
| FORD   | 3000.00 |
| Rohan  |    NULL |
+--------+---------+
12 rows in set (0.00 sec)

mysql> select ename, salary from emp where salary >all (select salary from emp where deptno =20);
Empty set (0.00 sec)

mysql> select ename, salary from emp where salary >all (select salary from emp where deptno =30);
+-------+---------+
| ename | salary  |
+-------+---------+
| JONES | 2975.00 |
| SCOTT | 3000.00 |
| FORD  | 3000.00 |
+-------+---------+
3 rows in set (0.00 sec)

mysql> select ename, salary from emp where salary >any (select salary from emp where deptno =30);
+--------+---------+
| ename  | salary  |
+--------+---------+
| ALLEN  | 1600.00 |
| WARD   | 1250.00 |
| JONES  | 2975.00 |
| MARTIN | 1250.00 |
| BLAKE  | 2850.00 |
| SCOTT  | 3000.00 |
| TURNER | 1500.00 |
| ADAMS  | 1100.00 |
| FORD   | 3000.00 |
+--------+---------+
9 rows in set (0.00 sec)

mysql> select * from emp;
+-------+--------+----------+------+------------+---------+---------+--------+
| EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SALARY  | COMM    | DEPTNO |
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

mysql> delete  from emp where salary = Null;
Query OK, 0 rows affected (0.00 sec)

mysql> select * from emp;
+-------+--------+----------+------+------------+---------+---------+--------+
| EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SALARY  | COMM    | DEPTNO |
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

mysql> delete  from emp where empno=7935;
Query OK, 1 row affected (0.01 sec)

mysql> select * from emp;
+-------+--------+----------+------+------------+---------+---------+--------+
| EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SALARY  | COMM    | DEPTNO |
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
+-------+--------+----------+------+------------+---------+---------+--------+
11 rows in set (0.00 sec)

mysql> select ename, salary from emp where salary >any (select salary from emp where deptno =20);
+--------+---------+
| ename  | salary  |
+--------+---------+
| ALLEN  | 1600.00 |
| WARD   | 1250.00 |
| JONES  | 2975.00 |
| MARTIN | 1250.00 |
| BLAKE  | 2850.00 |
| SCOTT  | 3000.00 |
| TURNER | 1500.00 |
| ADAMS  | 1100.00 |
| JAMES  |  950.00 |
| FORD   | 3000.00 |
+--------+---------+
10 rows in set (0.00 sec)

mysql> select ename, salary from emp where salary >any (select salary from emp where deptno =30);
+--------+---------+
| ename  | salary  |
+--------+---------+
| ALLEN  | 1600.00 |
| WARD   | 1250.00 |
| JONES  | 2975.00 |
| MARTIN | 1250.00 |
| BLAKE  | 2850.00 |
| SCOTT  | 3000.00 |
| TURNER | 1500.00 |
| ADAMS  | 1100.00 |
| FORD   | 3000.00 |
+--------+---------+
9 rows in set (0.00 sec)

mysql> select * from emp;
+-------+--------+----------+------+------------+---------+---------+--------+
| EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SALARY  | COMM    | DEPTNO |
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
+-------+--------+----------+------+------------+---------+---------+--------+
11 rows in set (0.00 sec)

mysql> select ename, salary from emp where salary >all (select salary from emp where deptno =30);
+-------+---------+
| ename | salary  |
+-------+---------+
| JONES | 2975.00 |
| SCOTT | 3000.00 |
| FORD  | 3000.00 |
+-------+---------+
3 rows in set (0.00 sec)

mysql> select * from dept 
    -> where exists (select * from emp 
    -> where emp.deptno=dept.deptno);
+--------+----------+---------+
| DEPTNO | DNAME    | LOC     |
+--------+----------+---------+
|     20 | RESEARCH | DALLAS  |
|     30 | SALES    | CHICAGO |
+--------+----------+---------+
2 rows in set (0.00 sec)

mysql> 
mysql> select ename from emp where sal = (select sal from emp where sal >avg(sal));
ERROR 1054 (42S22): Unknown column 'sal' in 'where clause'
mysql> 
mysql> -- cross join
mysql> select * from emp  cross join dept;
+-------+--------+----------+------+------------+---------+---------+--------+--------+------------+----------+
| EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SALARY  | COMM    | DEPTNO | DEPTNO | DNAME      | LOC      |
+-------+--------+----------+------+------------+---------+---------+--------+--------+------------+----------+
|  7369 | SMITH  | CLERK    | 7902 | 2012-02-02 |  800.00 |    NULL |     20 |     40 | OPERATIONS | BOSTON   |
|  7369 | SMITH  | CLERK    | 7902 | 2012-02-02 |  800.00 |    NULL |     20 |     30 | SALES      | CHICAGO  |
|  7369 | SMITH  | CLERK    | 7902 | 2012-02-02 |  800.00 |    NULL |     20 |     20 | RESEARCH   | DALLAS   |
|  7369 | SMITH  | CLERK    | 7902 | 2012-02-02 |  800.00 |    NULL |     20 |     10 | ACCOUNTING | NEW YORK |
|  7499 | ALLEN  | SALESMAN | 7698 | 2012-01-02 | 1600.00 |  300.00 |     30 |     40 | OPERATIONS | BOSTON   |
|  7499 | ALLEN  | SALESMAN | 7698 | 2012-01-02 | 1600.00 |  300.00 |     30 |     30 | SALES      | CHICAGO  |
|  7499 | ALLEN  | SALESMAN | 7698 | 2012-01-02 | 1600.00 |  300.00 |     30 |     20 | RESEARCH   | DALLAS   |
|  7499 | ALLEN  | SALESMAN | 7698 | 2012-01-02 | 1600.00 |  300.00 |     30 |     10 | ACCOUNTING | NEW YORK |
|  7521 | WARD   | SALESMAN | 7698 | 2013-01-02 | 1250.00 |  500.00 |     30 |     40 | OPERATIONS | BOSTON   |
|  7521 | WARD   | SALESMAN | 7698 | 2013-01-02 | 1250.00 |  500.00 |     30 |     30 | SALES      | CHICAGO  |
|  7521 | WARD   | SALESMAN | 7698 | 2013-01-02 | 1250.00 |  500.00 |     30 |     20 | RESEARCH   | DALLAS   |
|  7521 | WARD   | SALESMAN | 7698 | 2013-01-02 | 1250.00 |  500.00 |     30 |     10 | ACCOUNTING | NEW YORK |
|  7566 | JONES  | MANAGER  | 7839 | 2013-01-02 | 2975.00 |    NULL |     20 |     40 | OPERATIONS | BOSTON   |
|  7566 | JONES  | MANAGER  | 7839 | 2013-01-02 | 2975.00 |    NULL |     20 |     30 | SALES      | CHICAGO  |
|  7566 | JONES  | MANAGER  | 7839 | 2013-01-02 | 2975.00 |    NULL |     20 |     20 | RESEARCH   | DALLAS   |
|  7566 | JONES  | MANAGER  | 7839 | 2013-01-02 | 2975.00 |    NULL |     20 |     10 | ACCOUNTING | NEW YORK |
|  7654 | MARTIN | SALESMAN | 7698 | 2012-05-02 | 1250.00 | 1400.00 |     30 |     40 | OPERATIONS | BOSTON   |
|  7654 | MARTIN | SALESMAN | 7698 | 2012-05-02 | 1250.00 | 1400.00 |     30 |     30 | SALES      | CHICAGO  |
|  7654 | MARTIN | SALESMAN | 7698 | 2012-05-02 | 1250.00 | 1400.00 |     30 |     20 | RESEARCH   | DALLAS   |
|  7654 | MARTIN | SALESMAN | 7698 | 2012-05-02 | 1250.00 | 1400.00 |     30 |     10 | ACCOUNTING | NEW YORK |
|  7698 | BLAKE  | MANAGER  | 7839 | 2012-01-06 | 2850.00 |    NULL |     30 |     40 | OPERATIONS | BOSTON   |
|  7698 | BLAKE  | MANAGER  | 7839 | 2012-01-06 | 2850.00 |    NULL |     30 |     30 | SALES      | CHICAGO  |
|  7698 | BLAKE  | MANAGER  | 7839 | 2012-01-06 | 2850.00 |    NULL |     30 |     20 | RESEARCH   | DALLAS   |
|  7698 | BLAKE  | MANAGER  | 7839 | 2012-01-06 | 2850.00 |    NULL |     30 |     10 | ACCOUNTING | NEW YORK |
|  7788 | SCOTT  | ANALYST  | 7566 | 2012-01-10 | 3000.00 |    NULL |     20 |     40 | OPERATIONS | BOSTON   |
|  7788 | SCOTT  | ANALYST  | 7566 | 2012-01-10 | 3000.00 |    NULL |     20 |     30 | SALES      | CHICAGO  |
|  7788 | SCOTT  | ANALYST  | 7566 | 2012-01-10 | 3000.00 |    NULL |     20 |     20 | RESEARCH   | DALLAS   |
|  7788 | SCOTT  | ANALYST  | 7566 | 2012-01-10 | 3000.00 |    NULL |     20 |     10 | ACCOUNTING | NEW YORK |
|  7844 | TURNER | SALESMAN | 7698 | 2012-01-20 | 1500.00 |    0.00 |     30 |     40 | OPERATIONS | BOSTON   |
|  7844 | TURNER | SALESMAN | 7698 | 2012-01-20 | 1500.00 |    0.00 |     30 |     30 | SALES      | CHICAGO  |
|  7844 | TURNER | SALESMAN | 7698 | 2012-01-20 | 1500.00 |    0.00 |     30 |     20 | RESEARCH   | DALLAS   |
|  7844 | TURNER | SALESMAN | 7698 | 2012-01-20 | 1500.00 |    0.00 |     30 |     10 | ACCOUNTING | NEW YORK |
|  7876 | ADAMS  | CLERK    | 7788 | 2013-01-02 | 1100.00 |    NULL |     20 |     40 | OPERATIONS | BOSTON   |
|  7876 | ADAMS  | CLERK    | 7788 | 2013-01-02 | 1100.00 |    NULL |     20 |     30 | SALES      | CHICAGO  |
|  7876 | ADAMS  | CLERK    | 7788 | 2013-01-02 | 1100.00 |    NULL |     20 |     20 | RESEARCH   | DALLAS   |
|  7876 | ADAMS  | CLERK    | 7788 | 2013-01-02 | 1100.00 |    NULL |     20 |     10 | ACCOUNTING | NEW YORK |
|  7900 | JAMES  | CLERK    | 7698 | 2012-03-02 |  950.00 |    NULL |     30 |     40 | OPERATIONS | BOSTON   |
|  7900 | JAMES  | CLERK    | 7698 | 2012-03-02 |  950.00 |    NULL |     30 |     30 | SALES      | CHICAGO  |
|  7900 | JAMES  | CLERK    | 7698 | 2012-03-02 |  950.00 |    NULL |     30 |     20 | RESEARCH   | DALLAS   |
|  7900 | JAMES  | CLERK    | 7698 | 2012-03-02 |  950.00 |    NULL |     30 |     10 | ACCOUNTING | NEW YORK |
|  7902 | FORD   | ANALYST  | 7566 | 2012-04-02 | 3000.00 |    NULL |     20 |     40 | OPERATIONS | BOSTON   |
|  7902 | FORD   | ANALYST  | 7566 | 2012-04-02 | 3000.00 |    NULL |     20 |     30 | SALES      | CHICAGO  |
|  7902 | FORD   | ANALYST  | 7566 | 2012-04-02 | 3000.00 |    NULL |     20 |     20 | RESEARCH   | DALLAS   |
|  7902 | FORD   | ANALYST  | 7566 | 2012-04-02 | 3000.00 |    NULL |     20 |     10 | ACCOUNTING | NEW YORK |
+-------+--------+----------+------+------------+---------+---------+--------+--------+------------+----------+
44 rows in set (0.00 sec)

mysql> select ename,salary,comm,dname,d.deptno,loc from emp as e cross join dept as d where sal>1000 and job in ('Manager','clerk');
ERROR 1054 (42S22): Unknown column 'sal' in 'where clause'
mysql> select ename,salary,comm,dname,d.deptno,loc from emp as e cross join dept as d where salary>1000 and job in ('Manager','clerk');
+-------+---------+------+------------+--------+----------+
| ename | salary  | comm | dname      | deptno | loc      |
+-------+---------+------+------------+--------+----------+
| ADAMS | 1100.00 | NULL | ACCOUNTING |     10 | NEW YORK |
| BLAKE | 2850.00 | NULL | ACCOUNTING |     10 | NEW YORK |
| JONES | 2975.00 | NULL | ACCOUNTING |     10 | NEW YORK |
| ADAMS | 1100.00 | NULL | RESEARCH   |     20 | DALLAS   |
| BLAKE | 2850.00 | NULL | RESEARCH   |     20 | DALLAS   |
| JONES | 2975.00 | NULL | RESEARCH   |     20 | DALLAS   |
| ADAMS | 1100.00 | NULL | SALES      |     30 | CHICAGO  |
| BLAKE | 2850.00 | NULL | SALES      |     30 | CHICAGO  |
| JONES | 2975.00 | NULL | SALES      |     30 | CHICAGO  |
| ADAMS | 1100.00 | NULL | OPERATIONS |     40 | BOSTON   |
| BLAKE | 2850.00 | NULL | OPERATIONS |     40 | BOSTON   |
| JONES | 2975.00 | NULL | OPERATIONS |     40 | BOSTON   |
+-------+---------+------+------------+--------+----------+
12 rows in set (0.00 sec)

mysql> select ename,salary ,comm,dname,loc , d.deptno
    -> from emp e , dept d
    -> where e.deptno=d.deptno;
+--------+---------+---------+----------+---------+--------+
| ename  | salary  | comm    | dname    | loc     | deptno |
+--------+---------+---------+----------+---------+--------+
| SMITH  |  800.00 |    NULL | RESEARCH | DALLAS  |     20 |
| ALLEN  | 1600.00 |  300.00 | SALES    | CHICAGO |     30 |
| WARD   | 1250.00 |  500.00 | SALES    | CHICAGO |     30 |
| JONES  | 2975.00 |    NULL | RESEARCH | DALLAS  |     20 |
| MARTIN | 1250.00 | 1400.00 | SALES    | CHICAGO |     30 |
| BLAKE  | 2850.00 |    NULL | SALES    | CHICAGO |     30 |
| SCOTT  | 3000.00 |    NULL | RESEARCH | DALLAS  |     20 |
| TURNER | 1500.00 |    0.00 | SALES    | CHICAGO |     30 |
| ADAMS  | 1100.00 |    NULL | RESEARCH | DALLAS  |     20 |
| JAMES  |  950.00 |    NULL | SALES    | CHICAGO |     30 |
| FORD   | 3000.00 |    NULL | RESEARCH | DALLAS  |     20 |
+--------+---------+---------+----------+---------+--------+
11 rows in set (0.00 sec)

mysql>  select ename,salary ,comm,dname,loc , d.deptno
    ->      from emp as e , dept as d
    ->     where e.deptno= d.deptno and e.deptno in(10,20) and salary>1000;
+-------+---------+------+----------+--------+--------+
| ename | salary  | comm | dname    | loc    | deptno |
+-------+---------+------+----------+--------+--------+
| SCOTT | 3000.00 | NULL | RESEARCH | DALLAS |     20 |
| FORD  | 3000.00 | NULL | RESEARCH | DALLAS |     20 |
| JONES | 2975.00 | NULL | RESEARCH | DALLAS |     20 |
| ADAMS | 1100.00 | NULL | RESEARCH | DALLAS |     20 |
+-------+---------+------+----------+--------+--------+
4 rows in set (0.00 sec)

mysql> selet ename , salary , comm,dname,loc
    -> from dept d
    -> right join 
    -> emp e 
    -> on e.deptno=d.deptno;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'selet ename , salary , comm,dname,loc
from dept d
right join 
emp e 
on e.deptno' at line 1
mysql> selet ename , salary , comm,dname,loc
    -> from dept d
    -> ^C
mysql> select empno,ename,salary,comm,loc from dept d left join emp e on e.deptno=d.deptno;
+-------+--------+---------+---------+----------+
| empno | ename  | salary  | comm    | loc      |
+-------+--------+---------+---------+----------+
|  NULL | NULL   |    NULL |    NULL | NEW YORK |
|  7902 | FORD   | 3000.00 |    NULL | DALLAS   |
|  7876 | ADAMS  | 1100.00 |    NULL | DALLAS   |
|  7788 | SCOTT  | 3000.00 |    NULL | DALLAS   |
|  7566 | JONES  | 2975.00 |    NULL | DALLAS   |
|  7369 | SMITH  |  800.00 |    NULL | DALLAS   |
|  7900 | JAMES  |  950.00 |    NULL | CHICAGO  |
|  7844 | TURNER | 1500.00 |    0.00 | CHICAGO  |
|  7698 | BLAKE  | 2850.00 |    NULL | CHICAGO  |
|  7654 | MARTIN | 1250.00 | 1400.00 | CHICAGO  |
|  7521 | WARD   | 1250.00 |  500.00 | CHICAGO  |
|  7499 | ALLEN  | 1600.00 |  300.00 | CHICAGO  |
|  NULL | NULL   |    NULL |    NULL | BOSTON   |
+-------+--------+---------+---------+----------+
13 rows in set (0.01 sec)

mysql> select empno,ename,salary,comm,loc from dept d right join emp e on e.deptno=d.deptno;
+-------+--------+---------+---------+---------+
| empno | ename  | salary  | comm    | loc     |
+-------+--------+---------+---------+---------+
|  7369 | SMITH  |  800.00 |    NULL | DALLAS  |
|  7499 | ALLEN  | 1600.00 |  300.00 | CHICAGO |
|  7521 | WARD   | 1250.00 |  500.00 | CHICAGO |
|  7566 | JONES  | 2975.00 |    NULL | DALLAS  |
|  7654 | MARTIN | 1250.00 | 1400.00 | CHICAGO |
|  7698 | BLAKE  | 2850.00 |    NULL | CHICAGO |
|  7788 | SCOTT  | 3000.00 |    NULL | DALLAS  |
|  7844 | TURNER | 1500.00 |    0.00 | CHICAGO |
|  7876 | ADAMS  | 1100.00 |    NULL | DALLAS  |
|  7900 | JAMES  |  950.00 |    NULL | CHICAGO |
|  7902 | FORD   | 3000.00 |    NULL | DALLAS  |
+-------+--------+---------+---------+---------+
11 rows in set (0.00 sec)

mysql> --self join
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '--self join' at line 1
mysql> select a.ename , b.ename as manager from emp a ,emp b where a.mgr=b.empno;
+--------+---------+
| ename  | manager |
+--------+---------+
| SMITH  | FORD    |
| ALLEN  | BLAKE   |
| WARD   | BLAKE   |
| MARTIN | BLAKE   |
| SCOTT  | JONES   |
| TURNER | BLAKE   |
| ADAMS  | SCOTT   |
| JAMES  | BLAKE   |
| FORD   | JONES   |
+--------+---------+
9 rows in set (0.00 sec)

mysql> select a.ename , a.salary , b.ename as manager,b.salary mgr_salary from emp a , emp b where a.mgr=b.empno;
+--------+---------+---------+------------+
| ename  | salary  | manager | mgr_salary |
+--------+---------+---------+------------+
| SMITH  |  800.00 | FORD    |    3000.00 |
| ALLEN  | 1600.00 | BLAKE   |    2850.00 |
| WARD   | 1250.00 | BLAKE   |    2850.00 |
| MARTIN | 1250.00 | BLAKE   |    2850.00 |
| SCOTT  | 3000.00 | JONES   |    2975.00 |
| TURNER | 1500.00 | BLAKE   |    2850.00 |
| ADAMS  | 1100.00 | SCOTT   |    3000.00 |
| JAMES  |  950.00 | BLAKE   |    2850.00 |
| FORD   | 3000.00 | JONES   |    2975.00 |
+--------+---------+---------+------------+
9 rows in set (0.00 sec)

mysql> select * from emp;
+-------+--------+----------+------+------------+---------+---------+--------+
| EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SALARY  | COMM    | DEPTNO |
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
+-------+--------+----------+------+------------+---------+---------+--------+
11 rows in set (0.00 sec)

mysql> select e1.ename, e1.job,e1.deptno,e2.ename,e2.job,e2.deptno 
    -> from emp e1 , emp e2
    -> where e1.job =e2.job and
    -> e1.deptno !=e2.deptno
    -> order by e1.ename;
+-------+---------+--------+-------+---------+--------+
| ename | job     | deptno | ename | job     | deptno |
+-------+---------+--------+-------+---------+--------+
| ADAMS | CLERK   |     20 | JAMES | CLERK   |     30 |
| BLAKE | MANAGER |     30 | JONES | MANAGER |     20 |
| JAMES | CLERK   |     30 | SMITH | CLERK   |     20 |
| JAMES | CLERK   |     30 | ADAMS | CLERK   |     20 |
| JONES | MANAGER |     20 | BLAKE | MANAGER |     30 |
| SMITH | CLERK   |     20 | JAMES | CLERK   |     30 |
+-------+---------+--------+-------+---------+--------+
6 rows in set (0.00 sec)

mysql> insert into student values(1,'varun', 88.89); 
ERROR 1146 (42S02): Table 'cdac.student' doesn't exist
mysql> set @a=100;
Query OK, 0 rows affected (0.04 sec)

mysql> select @;
+------------+
| @          |
+------------+
|        |
+------------+
1 row in set (0.00 sec)

mysql> select @a;
+------+
| @a   |
+------+
|  100 |
+------+
1 row in set (0.01 sec)

mysql> set @b =200;
Query OK, 0 rows affected (0.00 sec)

mysql> select @b;
+------+
| @b   |
+------+
|  200 |
+------+
1 row in set (0.00 sec)

mysql> select @name = 'Nikhil';
+------------------+
| @name = 'Nikhil' |
+------------------+
|             NULL |
+------------------+
1 row in set (0.00 sec)

mysql> select @name = "Nikhil";
+------------------+
| @name = "Nikhil" |
+------------------+
|             NULL |
+------------------+
1 row in set (0.00 sec)

mysql> select @name;
+--------------+
| @name        |
+--------------+
|          |
+--------------+
1 row in set (0.00 sec)

mysql> set @name;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> set @name= 'nikhil';
Query OK, 0 rows affected (0.00 sec)

mysql> select @name;
+--------+
| @name  |
+--------+
| nikhil |
+--------+
1 row in set (0.00 sec)

mysql> set @address = 'Adgaon,Nashik';
Query OK, 0 rows affected (0.00 sec)

mysql> select @address;
+---------------+
| @address      |
+---------------+
| Adgaon,Nashik |
+---------------+
1 row in set (0.00 sec)

mysql> select @max:=max(salary) from emp;
+-------------------+
| @max:=max(salary) |
+-------------------+
|           3000.00 |
+-------------------+
1 row in set, 1 warning (0.04 sec)

mysql> select @max;
+---------+
| @max    |
+---------+
| 3000.00 |
+---------+
1 row in set (0.00 sec)

mysql> select @max:=max(salary),@min:=min(salary) from emp;
+-------------------+-------------------+
| @max:=max(salary) | @min:=min(salary) |
+-------------------+-------------------+
|           3000.00 |            800.00 |
+-------------------+-------------------+
1 row in set, 2 warnings (0.00 sec)

mysql> select @Vsal:=(select salary from emp where ename='smith');
+-----------------------------------------------------+
| @Vsal:=(select salary from emp where ename='smith') |
+-----------------------------------------------------+
|                                              800.00 |
+-----------------------------------------------------+
1 row in set, 1 warning (0.00 sec)

mysql> select * from emp
    -> select * from dept
    -> end;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'select * from dept
end' at line 2
mysql> \! cls
mysql> delimiter //
mysql> create procedure proce1()
    -> begin 
    -> select * from emp;
    -> select * from emp where sal>1000;
    -> select * from dept;
    -> end;
    -> //
Query OK, 0 rows affected (0.06 sec)

mysql> call proce1();
    -> ^C
mysql> delimiter;
    -> call proce1();
    -> ^C
mysql> 
mysql> delimiter //
mysql> create procedure pr1()
    -> begin
    -> select * from emp;
    -> select * from emp where salary>1000;
    -> select * from dept;
    -> end;
    -> //

mysql> delimiter ;
mysql> call nikhil();
+-------+--------+----------+------+------------+---------+---------+--------+
| EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SALARY  | COMM    | DEPTNO |
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
+-------+--------+----------+------+------------+---------+---------+--------+
11 rows in set (0.00 sec)

+--------+------------+----------+
| DEPTNO | DNAME      | LOC      |
+--------+------------+----------+
|     10 | ACCOUNTING | NEW YORK |
|     20 | RESEARCH   | DALLAS   |
|     30 | SALES      | CHICAGO  |
|     40 | OPERATIONS | BOSTON   |
+--------+------------+----------+
4 rows in set (0.02 sec)

Query OK, 0 rows affected (0.02 sec)
mysql> delimiter //
mysql> create procedure pr1()
    -> begin
    -> select * from emp;
    -> select * from emp where salary>1000;
    -> select * from dept;
    -> end;
    -> //

mysql> delimiter ;
     -> call nikhil();
