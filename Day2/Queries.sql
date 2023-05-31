
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
