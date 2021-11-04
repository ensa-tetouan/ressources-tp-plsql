--Exercice 2 -- Question 1
create or replace function prix_totale(ord_id IN number)
return number AS

cursor c_ord is select sum(QUANTITY*UNIT_PRICE) from order_items where order_id = ord_id group by order_id ;

total number ;

begin

open c_ord ;

fetch c_ord into total ;
if total is not null then
return total ;
else 
return null ;
end if ;
close c_ord ;
end ;
