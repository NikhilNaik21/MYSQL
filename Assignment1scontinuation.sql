use Emp_Management;
select * from emp;
select * from emp where deptno=103;
select * from emp where deptno!=30;
-- count of rows
select count( * ) from emp;
select * from emp order by salary desc;
select * from emp order by deptno ,salary desc;
select * from emp where hiredate< '2000-12-31';
select distinct job from emp;
-- Alias 
select job,location,d.deptno from emp as e
join dept as d on d.deptno=e.deptno;

select * from emp where ename regexp '^m';
select * from emp where ename regexp 'n$';
select * from emp where deptno!=101 and deptno!=102;
select max(salary) from emp;
select avg(salary) from emp;
select * from emp where ename like '____';
select min(salary),max(salary) from emp as e
join dept as d on d.deptno=e.deptno;
select ename,dept.dept_name from emp 
join dept  on dept.deptno=emp.deptno;
