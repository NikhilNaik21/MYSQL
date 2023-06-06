-- creating database practice
mysql> create database practice;
Query OK, 1 row affected (0.06 sec)

--using database practice to work upon it
mysql> use practice;
Database changed
mysql> create table customers(
    -> customer_id int,
    -> customerName varchar(20),
    -> Address varchar(20),
    -> city varchar(20),
    -> country varchar(20)
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> select * from customers;

mysql> alter table customers add column Postalcode int;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table customers add  Postalcode int;
ERROR 1060 (42S21): Duplicate column name 'Postalcode'
mysql> desc customers
    -> ;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| customer_id  | int         | YES  |     | NULL    |       |
| customerName | varchar(20) | YES  |     | NULL    |       |
| Address      | varchar(20) | YES  |     | NULL    |       |
| city         | varchar(20) | YES  |     | NULL    |       |
| country      | varchar(20) | YES  |     | NULL    |       |
| Postalcode   | int         | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
6 rows in set (0.05 sec)

mysql> alter table customers add primary key(customer_id);
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customers;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| customer_id  | int         | NO   | PRI | NULL    |       |
| customerName | varchar(20) | YES  |     | NULL    |       |
| Address      | varchar(20) | YES  |     | NULL    |       |
| city         | varchar(20) | YES  |     | NULL    |       |
| country      | varchar(20) | YES  |     | NULL    |       |
| Postalcode   | int         | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

mysql> select * from customers;
+-------------+--------------+--------------+--------+---------+------------+
| customer_id | customerName | Address      | city   | country | Postalcode |
+-------------+--------------+--------------+--------+---------+------------+
|         100 | Nikhil       | Ns           | Nashik | India   |       4543 |
|         200 | Mohan        | fs           | Nashik | India   |       4544 |
|         300 | Sashank      | dfd          | Nashik | China   |       4544 |
|         400 | Rohan        | fd           | Nashik | India   |       4545 |
|         500 | Rohini       | konar        | Nashik | SA      |       4546 |
|         600 | Varad        | hanumannagar | Nashik | India   |       4547 |
|         700 | NikhilMali   | yrev         | Nashik | AUS     |       4543 |
|         800 | Nikhil       | fd           | Nashik | Brazil  |      45454 |
|         900 | Ranjan       | df           | Nashik | India   |      45433 |
|        1000 | Rajan        | dsf          | Nashik | Japan   |     454334 |
+-------------+--------------+--------------+--------+---------+------------+
10 rows in set (0.00 sec)

mysql> select city from customers;
+--------+
| city   |
+--------+
| Nashik |
| Nashik |
| Nashik |
| Nashik |
| Nashik |
| Nashik |
| Nashik |
| Nashik |
| Nashik |
| Nashik |
+--------+
10 rows in set (0.00 sec)

mysql> select distinct country from customers;
+---------+
| country |
+---------+
| India   |
| China   |
| SA      |
| AUS     |
| Brazil  |
| Japan   |
+---------+
6 rows in set (0.00 sec)

mysql> select city from customers where city='Berlin';
Empty set (0.00 sec)

mysql> select * from customers where customer_id=32;
Empty set (0.00 sec)

mysql> select * from customers where customer_id=800;
+-------------+--------------+---------+--------+---------+------------+
| customer_id | customerName | Address | city   | country | Postalcode |
+-------------+--------------+---------+--------+---------+------------+
|         800 | Nikhil       | fd      | Nashik | Brazil  |      45454 |
+-------------+--------------+---------+--------+---------+------------+
1 row in set (0.00 sec)

mysql> select city from customers where city='Nashik';
+--------+
| city   |
+--------+
| Nashik |
| Nashik |
| Nashik |
| Nashik |
| Nashik |
| Nashik |
| Nashik |
| Nashik |
| Nashik |
| Nashik |
+--------+
10 rows in set (0.00 sec)



mysql> select city from customers where city!='Berlin';
+--------+
| city   |
+--------+
| Nashik |
| Nashik |
| Nashik |
| Nashik |
| Nashik |
| Nashik |
| Nashik |
| Nashik |
| Nashik |
| Nashik |
+--------+
10 rows in set (0.00 sec)

mysql> select * from customers where city='Berlin'and postalcode=45454;
Empty set (0.00 sec)

mysql> select * from customers where city='Nashik' and postalcode=45454;
+-------------+--------------+---------+--------+---------+------------+
| customer_id | customerName | Address | city   | country | Postalcode |
+-------------+--------------+---------+--------+---------+------------+
|         800 | Nikhil       | fd      | Nashik | Brazil  |      45454 |
+-------------+--------------+---------+--------+---------+------------+
1 row in set (0.00 sec)

mysql> select * from customers where city='Nashik' and city='Nashik';
+-------------+--------------+--------------+--------+---------+------------+
| customer_id | customerName | Address      | city   | country | Postalcode |
+-------------+--------------+--------------+--------+---------+------------+
|         100 | Nikhil       | Ns           | Nashik | India   |       4543 |
|         200 | Mohan        | fs           | Nashik | India   |       4544 |
|         300 | Sashank      | dfd          | Nashik | China   |       4544 |
|         400 | Rohan        | fd           | Nashik | India   |       4545 |
|         500 | Rohini       | konar        | Nashik | SA      |       4546 |
|         600 | Varad        | hanumannagar | Nashik | India   |       4547 |
|         700 | NikhilMali   | yrev         | Nashik | AUS     |       4543 |
|         800 | Nikhil       | fd           | Nashik | Brazil  |      45454 |
|         900 | Ranjan       | df           | Nashik | India   |      45433 |
|        1000 | Rajan        | dsf          | Nashik | Japan   |     454334 |
+-------------+--------------+--------------+--------+---------+------------+
10 rows in set (0.00 sec)

mysql> select * from customers  order by customerName desc;
+-------------+--------------+--------------+--------+---------+------------+
| customer_id | customerName | Address      | city   | country | Postalcode |
+-------------+--------------+--------------+--------+---------+------------+
|         600 | Varad        | hanumannagar | Nashik | India   |       4547 |
|         300 | Sashank      | dfd          | Nashik | China   |       4544 |
|         500 | Rohini       | konar        | Nashik | SA      |       4546 |
|         400 | Rohan        | fd           | Nashik | India   |       4545 |
|         900 | Ranjan       | df           | Nashik | India   |      45433 |
|        1000 | Rajan        | dsf          | Nashik | Japan   |     454334 |
|         700 | NikhilMali   | yrev         | Nashik | AUS     |       4543 |
|         100 | Nikhil       | Ns           | Nashik | India   |       4543 |
|         800 | Nikhil       | fd           | Nashik | Brazil  |      45454 |
|         200 | Mohan        | fs           | Nashik | India   |       4544 |
+-------------+--------------+--------------+--------+---------+------------+
10 rows in set (0.04 sec)

mysql> select customerName from customers  order by customerName desc;
+--------------+
| customerName |
+--------------+
| Varad        |
| Sashank      |
| Rohini       |
| Rohan        |
| Ranjan       |
| Rajan        |
| NikhilMali   |
| Nikhil       |
| Nikhil       |
| Mohan        |
+--------------+
10 rows in set (0.00 sec)

mysql> select country,city from customers  order by country and city desc;
+---------+--------+
| country | city   |
+---------+--------+
| India   | Nashik |
| India   | Nashik |
| China   | Nashik |
| India   | Nashik |
| SA      | Nashik |
| India   | Nashik |
| AUS     | Nashik |
| Brazil  | Nashik |
| India   | Nashik |
| Japan   | Nashik |
+---------+--------+
10 rows in set, 9 warnings (0.01 sec)

mysql> select * from customers  where postalcode=0;
Empty set (0.00 sec)

mysql> select * from customers  where postalcode=4547;
+-------------+--------------+--------------+--------+---------+------------+
| customer_id | customerName | Address      | city   | country | Postalcode |
+-------------+--------------+--------------+--------+---------+------------+
|         600 | Varad        | hanumannagar | Nashik | India   |       4547 |
+-------------+--------------+--------------+--------+---------+------------+
1 row in set (0.00 sec)

mysql> select * from customers  where postalcode!=0;
+-------------+--------------+--------------+--------+---------+------------+
| customer_id | customerName | Address      | city   | country | Postalcode |
+-------------+--------------+--------------+--------+---------+------------+
|         100 | Nikhil       | Ns           | Nashik | India   |       4543 |
|         200 | Mohan        | fs           | Nashik | India   |       4544 |
|         300 | Sashank      | dfd          | Nashik | China   |       4544 |
|         400 | Rohan        | fd           | Nashik | India   |       4545 |
|         500 | Rohini       | konar        | Nashik | SA      |       4546 |
|         600 | Varad        | hanumannagar | Nashik | India   |       4547 |
|         700 | NikhilMali   | yrev         | Nashik | AUS     |       4543 |
|         800 | Nikhil       | fd           | Nashik | Brazil  |      45454 |
|         900 | Ranjan       | df           | Nashik | India   |      45433 |
|        1000 | Rajan        | dsf          | Nashik | Japan   |     454334 |
+-------------+--------------+--------------+--------+---------+------------+
10 rows in set (0.00 sec)


mysql> update Customers set customerName = 'NIKHILLL' where customer_id=100;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from customers;
+-------------+--------------+--------------+--------+---------+------------+
| customer_id | customerName | Address      | city   | country | Postalcode |
+-------------+--------------+--------------+--------+---------+------------+
|         100 | NIKHILLL     | Ns           | Nashik | India   |       4543 |
|         200 | Mohan        | fs           | Nashik | India   |       4544 |
|         300 | Sashank      | dfd          | Nashik | China   |       4544 |
|         400 | Rohan        | fd           | Nashik | India   |       4545 |
|         500 | Rohini       | konar        | Nashik | SA      |       4546 |
|         600 | Varad        | hanumannagar | Nashik | India   |       4547 |
|         700 | NikhilMali   | yrev         | Nashik | AUS     |       4543 |
|         800 | Nikhil       | fd           | Nashik | Brazil  |      45454 |
|         900 | Ranjan       | df           | Nashik | India   |      45433 |
|        1000 | Rajan        | dsf          | Nashik | Japan   |     454334 |
+-------------+--------------+--------------+--------+---------+------------+
10 rows in set (0.00 sec)

mysql> update customers set city = Panjim where customer_id =100;
ERROR 1054 (42S22): Unknown column 'Panjim' in 'field list'
mysql> update customers set city = 'Panjim' where customer_id =100;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from customers;
+-------------+--------------+--------------+--------+---------+------------+
| customer_id | customerName | Address      | city   | country | Postalcode |
+-------------+--------------+--------------+--------+---------+------------+
|         100 | NIKHILLL     | Ns           | Panjim | India   |       4543 |
|         200 | Mohan        | fs           | Nashik | India   |       4544 |
|         300 | Sashank      | dfd          | Nashik | China   |       4544 |
|         400 | Rohan        | fd           | Nashik | India   |       4545 |
|         500 | Rohini       | konar        | Nashik | SA      |       4546 |
|         600 | Varad        | hanumannagar | Nashik | India   |       4547 |
|         700 | NikhilMali   | yrev         | Nashik | AUS     |       4543 |
|         800 | Nikhil       | fd           | Nashik | Brazil  |      45454 |
|         900 | Ranjan       | df           | Nashik | India   |      45433 |
|        1000 | Rajan        | dsf          | Nashik | Japan   |     454334 |
+-------------+--------------+--------------+--------+---------+------------+
10 rows in set (0.00 sec)

mysql> update customers set city='Ponda' and country='Ind' where customer_id=100;
ERROR 1292 (22007): Truncated incorrect DOUBLE value: 'Ponda'
mysql> update customers set city='Ponda', country='Ind' where customer_id=100;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update customers set city='Ponda', country='Ind' where customer_id=100;
Query OK, 0 rows affected (0.00 sec)
Rows matched: 1  Changed: 0  Warnings: 0

mysql> select * from customers;
+-------------+--------------+--------------+--------+---------+------------+
| customer_id | customerName | Address      | city   | country | Postalcode |
+-------------+--------------+--------------+--------+---------+------------+
|         100 | NIKHILLL     | Ns           | Ponda  | Ind     |       4543 |
|         200 | Mohan        | fs           | Nashik | India   |       4544 |
|         300 | Sashank      | dfd          | Nashik | China   |       4544 |
|         400 | Rohan        | fd           | Nashik | India   |       4545 |
|         500 | Rohini       | konar        | Nashik | SA      |       4546 |
|         600 | Varad        | hanumannagar | Nashik | India   |       4547 |
|         700 | NikhilMali   | yrev         | Nashik | AUS     |       4543 |
|         800 | Nikhil       | fd           | Nashik | Brazil  |      45454 |
|         900 | Ranjan       | df           | Nashik | India   |      45433 |
|        1000 | Rajan        | dsf          | Nashik | Japan   |     454334 |
+-------------+--------------+--------------+--------+---------+------------+
10 rows in set (0.00 sec)

mysql> delete from customers where country='japan';
Query OK, 1 row affected (0.01 sec)

mysql> select * from customers;
+-------------+--------------+--------------+--------+---------+------------+
| customer_id | customerName | Address      | city   | country | Postalcode |
+-------------+--------------+--------------+--------+---------+------------+
|         100 | NIKHILLL     | Ns           | Ponda  | Ind     |       4543 |
|         200 | Mohan        | fs           | Nashik | India   |       4544 |
|         300 | Sashank      | dfd          | Nashik | China   |       4544 |
|         400 | Rohan        | fd           | Nashik | India   |       4545 |
|         500 | Rohini       | konar        | Nashik | SA      |       4546 |
|         600 | Varad        | hanumannagar | Nashik | India   |       4547 |
|         700 | NikhilMali   | yrev         | Nashik | AUS     |       4543 |
|         800 | Nikhil       | fd           | Nashik | Brazil  |      45454 |
|         900 | Ranjan       | df           | Nashik | India   |      45433 |
+-------------+--------------+--------------+--------+---------+------------+
9 rows in set (0.00 sec)

mysql> select min(postalcode)from customers;
+-----------------+
| min(postalcode) |
+-----------------+
|            4543 |
+-----------------+
1 row in set (0.01 sec)

mysql> select max(postalcode)from customers;
+-----------------+
| max(postalcode) |
+-----------------+
|           45454 |
+-----------------+
1 row in set (0.00 sec)


mysql> select count(customerName) from customers;
+---------------------+
| count(customerName) |
+---------------------+
|                   9 |
+---------------------+
1 row in set (0.00 sec)

mysql> select avg(customerName) from customers;
+-------------------+
| avg(customerName) |
+-------------------+
|                 0 |
+-------------------+
1 row in set, 9 warnings (0.00 sec)

mysql> select avg(customerName) from postalcode;
ERROR 1146 (42S02): Table 'practice.postalcode' doesn't exist
mysql> select avg(Postalcode) from customers;
+-----------------+
| avg(Postalcode) |
+-----------------+
|      13633.2222 |
+-----------------+
1 row in set (0.00 sec)

mysql> select sum(Postalcode) from customers;
+-----------------+
| sum(Postalcode) |
+-----------------+
|          122699 |
+-----------------+
1 row in set (0.00 sec)

mysql> select *from customers city like 'a%';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'like 'a%'' at line 1
mysql> select *from customers city like '%a';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'like '%a'' at line 1
mysql> select *from customers where city like '%a';
+-------------+--------------+---------+-------+---------+------------+
| customer_id | customerName | Address | city  | country | Postalcode |
+-------------+--------------+---------+-------+---------+------------+
|         100 | NIKHILLL     | Ns      | Ponda | Ind     |       4543 |
+-------------+--------------+---------+-------+---------+------------+
1 row in set (0.00 sec)

mysql> select *from customers where city like 'a%';
Empty set (0.00 sec)

mysql> select *from customers where city like '%a';
+-------------+--------------+---------+-------+---------+------------+
| customer_id | customerName | Address | city  | country | Postalcode |
+-------------+--------------+---------+-------+---------+------------+
|         100 | NIKHILLL     | Ns      | Ponda | Ind     |       4543 |
+-------------+--------------+---------+-------+---------+------------+
1 row in set (0.00 sec)

mysql> select *from customers where city like '%a%';
+-------------+--------------+--------------+--------+---------+------------+
| customer_id | customerName | Address      | city   | country | Postalcode |
+-------------+--------------+--------------+--------+---------+------------+
|         100 | NIKHILLL     | Ns           | Ponda  | Ind     |       4543 |
|         200 | Mohan        | fs           | Nashik | India   |       4544 |
|         300 | Sashank      | dfd          | Nashik | China   |       4544 |
|         400 | Rohan        | fd           | Nashik | India   |       4545 |
|         500 | Rohini       | konar        | Nashik | SA      |       4546 |
|         600 | Varad        | hanumannagar | Nashik | India   |       4547 |
|         700 | NikhilMali   | yrev         | Nashik | AUS     |       4543 |
|         800 | Nikhil       | fd           | Nashik | Brazil  |      45454 |
|         900 | Ranjan       | df           | Nashik | India   |      45433 |
+-------------+--------------+--------------+--------+---------+------------+
9 rows in set (0.00 sec)

mysql> select *from customers where city like '%a'and '%b';
Empty set, 1 warning (0.00 sec)

mysql> select *from customers where city like '%a'and 'b%';
Empty set, 1 warning (0.00 sec)

mysql> select *from customers where city like 'a%'and 'b%';
Empty set, 1 warning (0.00 sec)

mysql> select * from customers where city like 'a%'and 'b%';
Empty set, 1 warning (0.00 sec)

mysql> select * from customers where city like 'a%' , 'b%';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ', 'b%'' at line 1
mysql> select * from customers where city like 'a%' and city like 'b%';
Empty set (0.00 sec)

mysql> select * from customers where city like 'a%' or  'b%';
Empty set, 1 warning (0.00 sec)

mysql> select * from customers where city like 'a%' or city like 'b%';
Empty set (0.00 sec)

mysql> select * from customers where city like 'N%' or city like '%k';
+-------------+--------------+--------------+--------+---------+------------+
| customer_id | customerName | Address      | city   | country | Postalcode |
+-------------+--------------+--------------+--------+---------+------------+
|         200 | Mohan        | fs           | Nashik | India   |       4544 |
|         300 | Sashank      | dfd          | Nashik | China   |       4544 |
|         400 | Rohan        | fd           | Nashik | India   |       4545 |
|         500 | Rohini       | konar        | Nashik | SA      |       4546 |
|         600 | Varad        | hanumannagar | Nashik | India   |       4547 |
|         700 | NikhilMali   | yrev         | Nashik | AUS     |       4543 |
|         800 | Nikhil       | fd           | Nashik | Brazil  |      45454 |
|         900 | Ranjan       | df           | Nashik | India   |      45433 |
+-------------+--------------+--------------+--------+---------+------------+
8 rows in set (0.00 sec)

mysql> select * from customers where city not like 'a%';
+-------------+--------------+--------------+--------+---------+------------+
| customer_id | customerName | Address      | city   | country | Postalcode |
+-------------+--------------+--------------+--------+---------+------------+
|         100 | NIKHILLL     | Ns           | Ponda  | Ind     |       4543 |
|         200 | Mohan        | fs           | Nashik | India   |       4544 |
|         300 | Sashank      | dfd          | Nashik | China   |       4544 |
|         400 | Rohan        | fd           | Nashik | India   |       4545 |
|         500 | Rohini       | konar        | Nashik | SA      |       4546 |
|         600 | Varad        | hanumannagar | Nashik | India   |       4547 |
|         700 | NikhilMali   | yrev         | Nashik | AUS     |       4543 |
|         800 | Nikhil       | fd           | Nashik | Brazil  |      45454 |
|         900 | Ranjan       | df           | Nashik | India   |      45433 |
+-------------+--------------+--------------+--------+---------+------------+
9 rows in set (0.01 sec)

mysql> select city from customers where city not like 'P%';
+--------+
| city   |
+--------+
| Nashik |
| Nashik |
| Nashik |
| Nashik |
| Nashik |
| Nashik |
| Nashik |
| Nashik |
+--------+
8 rows in set (0.00 sec)

mysql> select city from customers where city  like 'P%';
+-------+
| city  |
+-------+
| Ponda |
+-------+
1 row in set (0.00 sec)

mysql> select * from customers where country in ('SA','Brazil');
+-------------+--------------+---------+--------+---------+------------+
| customer_id | customerName | Address | city   | country | Postalcode |
+-------------+--------------+---------+--------+---------+------------+
|         500 | Rohini       | konar   | Nashik | SA      |       4546 |
|         800 | Nikhil       | fd      | Nashik | Brazil  |      45454 |
+-------------+--------------+---------+--------+---------+------------+
2 rows in set (0.00 sec)

mysql> select * from customers where country not in ('SA','Brazil');
+-------------+--------------+--------------+--------+---------+------------+
| customer_id | customerName | Address      | city   | country | Postalcode |
+-------------+--------------+--------------+--------+---------+------------+
|         100 | NIKHILLL     | Ns           | Ponda  | Ind     |       4543 |
|         200 | Mohan        | fs           | Nashik | India   |       4544 |
|         300 | Sashank      | dfd          | Nashik | China   |       4544 |
|         400 | Rohan        | fd           | Nashik | India   |       4545 |
|         600 | Varad        | hanumannagar | Nashik | India   |       4547 |
|         700 | NikhilMali   | yrev         | Nashik | AUS     |       4543 |
|         900 | Ranjan       | df           | Nashik | India   |      45433 |
+-------------+--------------+--------------+--------+---------+------------+
7 rows in set (0.00 sec)

mysql> select * from customers where postalcode between 4542 and 5000;
+-------------+--------------+--------------+--------+---------+------------+
| customer_id | customerName | Address      | city   | country | Postalcode |
+-------------+--------------+--------------+--------+---------+------------+
|         100 | NIKHILLL     | Ns           | Ponda  | Ind     |       4543 |
|         200 | Mohan        | fs           | Nashik | India   |       4544 |
|         300 | Sashank      | dfd          | Nashik | China   |       4544 |
|         400 | Rohan        | fd           | Nashik | India   |       4545 |
|         500 | Rohini       | konar        | Nashik | SA      |       4546 |
|         600 | Varad        | hanumannagar | Nashik | India   |       4547 |
|         700 | NikhilMali   | yrev         | Nashik | AUS     |       4543 |
+-------------+--------------+--------------+--------+---------+------------+
7 rows in set (0.01 sec)

mysql> select * from customers where postalcode not between 4542 and 5000;
+-------------+--------------+---------+--------+---------+------------+
| customer_id | customerName | Address | city   | country | Postalcode |
+-------------+--------------+---------+--------+---------+------------+
|         800 | Nikhil       | fd      | Nashik | Brazil  |      45454 |
|         900 | Ranjan       | df      | Nashik | India   |      45433 |
+-------------+--------------+---------+--------+---------+------------+
2 rows in set (0.00 sec)

mysql> select postcode from customers as pno;
ERROR 1054 (42S22): Unknown column 'postcode' in 'field list'
mysql> select postcode from customers as 'pno';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''pno'' at line 1
mysql> select postalcode from customers as 'pno';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''pno'' at line 1
mysql> select postalcode as 'pno' from customers ;
+-------+
| pno   |
+-------+
|  4543 |
|  4544 |
|  4544 |
|  4545 |
|  4546 |
|  4547 |
|  4543 |
| 45454 |
| 45433 |
+-------+
9 rows in set (0.00 sec)

mysql> select customerName as 'CNAME' from customers ;
+------------+
| CNAME      |
+------------+
| NIKHILLL   |
| Mohan      |
| Sashank    |
| Rohan      |
| Rohini     |
| Varad      |
| NikhilMali |
| Nikhil     |
| Ranjan     |
+------------+
9 rows in set (0.00 sec)

mysql> select count(customerName) from customers;
+---------------------+
| count(customerName) |
+---------------------+
|                   9 |
+---------------------+
1 row in set (0.00 sec)

mysql> create database testdb;
Query OK, 1 row affected (0.05 sec)

mysql> drop database testdb;
Query OK, 0 rows affected (0.02 sec)

mysql> select * from testdb;
ERROR 1146 (42S02): Table 'practice.testdb' doesn't exist
mysql> truncate table testdb;
ERROR 1146 (42S02): Table 'practice.testdb' doesn't exist
mysql> alter table customers add  Birthdate date;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from customers;
+-------------+--------------+--------------+--------+---------+------------+-----------+
| customer_id | customerName | Address      | city   | country | Postalcode | Birthdate |
+-------------+--------------+--------------+--------+---------+------------+-----------+
|         100 | NIKHILLL     | Ns           | Ponda  | Ind     |       4543 | NULL      |
|         200 | Mohan        | fs           | Nashik | India   |       4544 | NULL      |
|         300 | Sashank      | dfd          | Nashik | China   |       4544 | NULL      |
|         400 | Rohan        | fd           | Nashik | India   |       4545 | NULL      |
|         500 | Rohini       | konar        | Nashik | SA      |       4546 | NULL      |
|         600 | Varad        | hanumannagar | Nashik | India   |       4547 | NULL      |
|         700 | NikhilMali   | yrev         | Nashik | AUS     |       4543 | NULL      |
|         800 | Nikhil       | fd           | Nashik | Brazil  |      45454 | NULL      |
|         900 | Ranjan       | df           | Nashik | India   |      45433 | NULL      |
+-------------+--------------+--------------+--------+---------+------------+-----------+
9 rows in set (0.00 sec)

mysql> alter table customers drop column Birthdate;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from customers;
+-------------+--------------+--------------+--------+---------+------------+
| customer_id | customerName | Address      | city   | country | Postalcode |
+-------------+--------------+--------------+--------+---------+------------+
|         100 | NIKHILLL     | Ns           | Ponda  | Ind     |       4543 |
|         200 | Mohan        | fs           | Nashik | India   |       4544 |
|         300 | Sashank      | dfd          | Nashik | China   |       4544 |
|         400 | Rohan        | fd           | Nashik | India   |       4545 |
|         500 | Rohini       | konar        | Nashik | SA      |       4546 |
|         600 | Varad        | hanumannagar | Nashik | India   |       4547 |
|         700 | NikhilMali   | yrev         | Nashik | AUS     |       4543 |
|         800 | Nikhil       | fd           | Nashik | Brazil  |      45454 |
|         900 | Ranjan       | df           | Nashik | India   |      45433 |
+-------------+--------------+--------------+--------+---------+------------+
9 rows in set (0.00 sec)
mysql> alter table customers rename column postalcode to postal_code;
Query OK, 0 rows affected (0.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from customers;
+-------------+--------------+--------------+--------+---------+-------------+
| customer_id | customerName | Address      | city   | country | postal_code |
+-------------+--------------+--------------+--------+---------+-------------+
|         100 | NIKHILLL     | Ns           | Ponda  | Ind     |        4543 |
|         200 | Mohan        | fs           | Nashik | India   |        4544 |
|         300 | Sashank      | dfd          | Nashik | China   |        4544 |
|         400 | Rohan        | fd           | Nashik | India   |        4545 |
|         500 | Rohini       | konar        | Nashik | SA      |        4546 |
|         600 | Varad        | hanumannagar | Nashik | India   |        4547 |
|         700 | NikhilMali   | yrev         | Nashik | AUS     |        4543 |
|         800 | Nikhil       | fd           | Nashik | Brazil  |       45454 |
|         900 | Ranjan       | df           | Nashik | India   |       45433 |
+-------------+--------------+--------------+--------+---------+-------------+
9 rows in set (0.00 sec)

mysql> exit;
