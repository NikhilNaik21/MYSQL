select first_name ,last_name,
points*.1 discount
from customers;

select * from customers 
where points>1000
order by points desc;

select first_name ,last_name ,state
from customers
order by state ;

select last_name ,state 
from customers
order by state desc , last_name desc;

select * from customers
order by birth_date;

select * from customers
order by birth_date desc , birth_date;

select first_name, last_name,state from customers
where state ='fl' or state ='va' or state='tx'
order by state;


select first_name, last_name,state from customers
where state in('fl','va' ,'tx')
order by state;

select first_name, last_name,state,points from customers
where points>=1000 and points <=2000;



select first_name, last_name,state,birth_date from customers
where birth_date>='1980-01-01' and '1997-01-01';

select first_name, last_name,state,birth_date from customers
where birth_date between '1980-01-01' and '1990-01-01';

select first_name, last_name,state,points from customers
where points between 796 and 3000 ;

select * from customers where first_name ='elka';

-- first_name starts with r
 select * from customers where first_name like 'r%';

-- first_name ends with y
select * from customers where first_name like '%y';

-- second letter in first_name =e 
select * from customers where first_name like '_e%';

-- compulsory 4 letters + 3rd letter should be V
select * from customers where first_name like '__v_';

-- Any number of characters/all the customers whose firstname contains 'il'
select * from customers where first_name like '%il%';

-- wrong spelling --> judges on pronounciation
select * from customers where first_name sounds like 'freddi';


select * from customers where last_name regexp 'field';

-- ends with ey using regular expression
select * from customers where last_name regexp 'ey$';

-- contains el or ends with ey
select * from customers where last_name regexp 'el|ey$';

-- ends with ey using regular expression
select * from customers where last_name regexp 'ey$';

-- starts with el (^) or ends with ey
select * from customers where last_name regexp '^el|ey$';

-- I followed by l
select * from customers where first_name regexp '[I]l';


-- g/i/m followed by e
select * from customers where last_name regexp '[gim]e';

-- range a/b/c/d...../h followed by e
select * from customers where last_name regexp '[a-h]e';

-- last_name contains atleast 2 a's
select * from customers where last_name like '%a%a%';

-- last name contains 2 e's
select * from customers where last_name like '%e%e%';