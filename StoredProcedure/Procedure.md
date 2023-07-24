```
INSERT INTO `cdac`.`emp`
(`EMPNO`,
`ENAME`,
`JOB`,
`MGR`,
`HIREDATE`,
`SALARY`,
`Commission`,
`DEPTNO`)
VALUES
(101,
'nikhil',
'Clerk',
7698,
'2023-02-04',
30000,
0,
30);

```
select * from emp;

```
delimiter // 
create procedure insertEmployees(IN EMPNO decimal(4,0) ,
 IN ENAME varchar(10) ,
 IN JOB varchar(9) ,
 IN MGR decimal(4,0) ,
 IN HIREDATE Date ,
 IN SALARY decimal(7,2) ,
 IN COMMISSION decimal(7,2),
 IN DEPTNO decimal(2,0) ,
 OUT STATUS int )
 BEGIN 
	insert into emp values (EMPNO,ENAME ,JOB,MGR , HIREDATE , SALARY , COMMISSION , DEPTNO);
 END;
 
 //
 delimiter ;
 select @flag;
 call insertEmployees(20,'Nikhil', 'IT' , 20 , '2023-08-28',70000,5000,10,@flag);
```
select * from emp;

To call procedure

```
call  proce1(5000);
```
