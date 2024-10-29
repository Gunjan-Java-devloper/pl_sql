
/*
 drop procedure if exists pro1;
delimiter $
create procedure pro1()
begin
    select "Hello World" R1;
end $
delimiter ;
----------------------------------------------------------------

Addition of two numbers
drop procedure if exists pro2;
delimiter $
create procedure pro2()
begin
    declare x int;
    declare y int default 200;
    set x:=100;
    set @z1 := 7;
    select x,y,@z,@z1;
end $
delimiter ; 



drop procedure if exists pro3;
delimiter $ 
create procedure pro3()
begin 
     declare x int default 100;
     declare y int default 200;
     select x+y;
end $ 

delimiter ;




drop procedure if exists pro3;
delimiter $ 
create procedure pro3(x int,y int)
begin
     select x+y;
end $ 
delimiter ;     





drop procedure if exists pro3;
delimiter $ 
create procedure pro3(in x int,in y int , out z int)
begin 
     set z:=x+y;
end $
delimiter ;     



drop procedure if exists randomString;
delimiter $
create procedure randomString()

begin
     declare randomString varchar(6);
     set randomString = (
          select concat(
               char(floor(rand() * 26) + 65),
               char(floor(rand() * 26) + 65),
               char(floor(rand() * 26) + 65),
               char(floor(rand() * 26) + 65),
               char(floor(rand() * 26) + 65),
               char(floor(rand() * 26) + 65)
          )
     );
     select randomString;
end $ 

delimiter ;


*/

drop procedure if exists random3digitNumber;
delimiter $
create procedure random3digitNumber()

begin
    DECLARE randomNum INT;
    SET randomNum = (SELECT FLOOR(RAND() * 900) + 100);
    SELECT randomNum;
end $
delimiter ;


/*
drop procedure if exists pro1;
delimiter $
create procedure pro1(in x int, in y int, out z int, out z1 int)
begin
     set z := x+y;
     set z1 := x*y;
     select  z;

end $
delimiter ; 




drop procedure if exists pro1;
delimiter $ 
create procedure pro1(in x int, in y int , out z int, out z1 int)
begin
     set z := x/y;
     set z1 := x-y;
     select z;
end $ 
 delimiter ;
 

drop procedure if exists pro1;
delimiter $ 
create procedure pro1(in x int)
begin
     if x = 100 Then
          select 'Good';
     else
          select 'Not Good';
     end if ;
end $ 
 delimiter ;


 
 drop procedure if exists pro1;
 delimiter $ 
 create procedure pro1(in x int )
 begin
      declare x int default 1;
      l:loop
           select x;
           set x :=x+1;

           if x=11 Then
               leave l;
           end if ;
      end loop l;
 end $ 
 delimiter ;              
*/


