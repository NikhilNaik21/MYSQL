create table Customer( custid int primary key,
    -> email_address varchar(75),
    -> first_name varchar(50),
    -> last_name  varchar(50),
    -> address1 varchar(50),
    -> address2 varchar(50),
    -> customer_zip varchar(10),
    -> area_code char(5),
    -> telephone_number char(7));
    
    insert into customer values(100,'Varad@gnail.com','Varad','jade','Bhujbal city Nashik','Jatra hotel Nashik','3452','020','6532451');
     insert into customer values(100,'Atharv@gnail.com','Atharv','Bhagwat','Bhujbal city Nashik','Jatra hotel Nashik','3453','021','6532451');
     insert into customer values(300,'Gaurav21@gnail.com','Gaurav','Takalkar','Bhujbal city Nashik','Jatra hotel Nashik','3452','022','6532001');
     select * from customer;
