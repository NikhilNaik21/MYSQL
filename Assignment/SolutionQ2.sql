create table cardinfo(Card_id int primary key,
    -> CCnum varchar(16),
    -> CCexp date,
    -> Name_on_Card varchar(100),
    -> email_address varchar(75));
    
    insert into cardinfo values(100,'67565764565635','2025-11-12','Atharv','Atharv@gmail.com');
    insert into cardinfo values(101,'675657645233335','2025-10-04','Pradip','Pradip@gmail.com');
    insert into cardinfo values(102,'675657642742335','2024-04-22','Shekhar','Shekhar@gmail.com');
    select * from cardinfo;
