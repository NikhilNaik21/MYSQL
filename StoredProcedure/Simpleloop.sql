delimiter // 
create procedure simpleloop()
begin 
 declare counter int default 1 ; 
 Simpleloop : loop
 select counter ;
 SET counter = counter + 1;
 IF COUNTER =11 THEN
 leave simpleloop ; 
 end if;
 end loop simpleloop;
END;
//
 
 delimiter ;
 
 call simpleloop();
