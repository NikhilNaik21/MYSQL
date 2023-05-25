create database Emp_Management;
show databases;
use Emp_Management;
create table DEPT ( DEPTNO int primary key Not null Auto_increment,
DEPT_NAME varchar(20),
LOCATION varchar(20)
);
 desc DEPT;

insert into DEPT values (101,'ACCOUNTING','PUNE'),
(102,'RESEARCH','CHENNAI'),
(103,'SALES','MUMBAI'),
(104,'OPERATIONS','DELHI'),
(105,'PROGRAMMER','KOLKATA');

select * from DEPT;
create table EMP( EMPNO int primary key Not null,
ENAME varchar(20),
JOB varchar(10),
HIREDATE date,
SALARY int(5),
AADHAR int(10) unique ,
DEPTNO int(10) ,
foreign key(DEPTNO) references DEPT(DEPTNO)
);
select * from EMP;
desc EMP;
alter table EMP modify column EMPNO varchar(20);
insert into EMP(EMPNO, ENAME,JOB,HIREDATE,SALARY,AADHAR,DEPTNO) values('E01','ARUN','CLERK','2001-12-17',5000,4562,101);
insert into EMP(EMPNO, ENAME,JOB,HIREDATE,SALARY,AADHAR,DEPTNO) values('E02','RAJ','SALESMAN','2000-04-22',6000,4552,103),
('E03','JOHN','SALESMAN','2001-04-02',5000,2683,103),
('E04','VISHAL','MANAGER','2002-06-08',7000,2556,104),
('E05','CHINMAY','ANALYST','2003-01-09',5500,8232,104),
('E06','MILLER','TESTER','2002-01-01',5000,5962,105),
('E07','MANU','SALESMAN','2003-10-25',4000,4569,103),
('E08','SACHU','ANALYST','2004-02-02',7500,1258,104),
('E09','POOJA','SC','2000-04-22',6500,0235,102),
('E010','VIPUL','CLERK','2000-12-20',6000,5690,101),
('E011','ANU','SC','2002-03-15',5200,5896,102);

select * from EMP join DEPT on DEPT.DEPTNO = EMP.DEPTNO;
alter table DEPT add ZIPCODE int(10);
insert into DEPT (ZIPCODE) values(40421);
select ZIPCODE from DEPT where DEPTNO=106;
delete from DEPT where DEPTNO=106;
update DEPT set ZIPCODE=40300 Where DEPTNO in (101,102,103,104,105);

delete from EMP where EMPNO='E011';
select * from DEPT;
select * from EMP;

create table SALGRADE(GRADE_ID varchar(10) ,
LOSAL int(5),
HISAL int(5),
GRADE varchar(5) default 'C'

);
select * from SALGRADE;
insert into SALGRADE(GRADE_ID,LOSAL,HISAL,GRADE) values('G1',700,1200,'A'),
('G2',800,1300,'B'),
('G3',900,1400,'');
delete from SALGRADE where GRADE_ID='G3';
alter table SALGRADE add constraint  GRADE_ID  primary key (GRADE_ID);
insert into  SALGRADE(GRADE_ID,LOSAL,HISAL) values('G3',900,1400);