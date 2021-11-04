--Exercice 2 -- Question 2
create or replace function num_pending
return number AS

cursor c_ord is select count(*) from orders where status = 'Pending' ;
num_p number ;

begin

open c_ord ;

fetch c_ord into num_p ;
if num_p is not null then
return num_p ;
else 
return null ;
end if ;
close c_ord ;

end ;
